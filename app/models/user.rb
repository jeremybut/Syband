# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  image_url              :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string(255)
#  locked_at              :datetime
#  created_at             :datetime
#  updated_at             :datetime
#  is_admin               :boolean
#

class User < ActiveRecord::Base
  include Concerns::UserImagesConcern

  has_many :memberships
  has_many :usersongs

  has_many :bands, through: :memberships 
  has_many :songs, through: :usersongs

  rails_admin do
    label "Utilisateur" 
    label_plural "Utilisateurs"
    navigation_label "Profils Utilisateurs"
    
    list do
      field :first_name do
        label "Prénom"
      end          
      field :last_name do
        label "Nom"  
      end
      field :image_url do
        label "Url avatar"
      end
      field :email do
        label "Email"
      end
      field :encrypted_password do
        label "Mot de passe crypté"
      end
      field :reset_password_token do
        label "Jeton de réinitialisation de mot de passe"
      end
      field :reset_password_sent_at do
        label "Date d'envoi du jeton"
      end
      field :remember_created_at do
        label "Crée le"
      end
      field :sign_in_count do
        label "Nombre de connexion"
      end
      field :current_sign_in_at do
        label "Connexion actuelle le"
      end
      field :last_sign_in_at do
        label "Dernière connexion le"
      end
      field :current_sign_in_ip do
        label "Ip de la connexion actuelle"
      end
      field :last_sign_in_ip do
        label "Ip de la dernière connexion"
      end
      field :confirmation_token do
        label "Jeton de confirmation"
      end
      field :confirmed_at do
        label "Confirmé le"
      end
      field :confirmation_sent_at do
        label "Confirmation envoyé le"
      end
      field :unconfirmed_email do
        label "Mail non confirmé"
      end
      field :failed_attempts do
        label "Erreur de connexion"
      end
      field :unlock_token do
        label "Jeton de déverouillage"
      end
      field :locked_at do
        label "Compte bloqué le"
      end
      field :created_at do
        label "Compte crée le"
      end
      field :updated_at do
        label "Compte mis à jour le"
      end
      field :is_admin do
        label "Administrateur?"
      end
    end
    
    edit do
    exclude_fields
      field :first_name do
        label "Prénom"
      end          
      field :last_name do
        label "Nom"  
      end
      field :image_url do
        label "Url avatar"
      end
      field :email do
        label "Email"
      end
      field :encrypted_password do
        label "Mot de passe crypté"
      end
      field :reset_password_token do
        label "Jeton de réinitialisation de mot de passe"
      end
      field :reset_password_sent_at do
        label "Date d'envoi du jeton"
      end
      field :remember_created_at do
        label "Crée le"
      end
      field :sign_in_count do
        label "Nombre de connexion"
      end
      field :current_sign_in_at do
        label "Connexion actuelle le"
      end
      field :last_sign_in_at do
        label "Dernière connexion le"
      end
      field :current_sign_in_ip do
        label "Ip de la connexion actuelle"
      end
      field :last_sign_in_ip do
        label "Ip de la dernière connexion"
      end
      field :confirmation_token do
        label "Jeton de confirmation"
      end
      field :confirmed_at do
        label "Confirmé le"
      end
      field :confirmation_sent_at do
        label "Confirmation envoyé le"
      end
      field :unconfirmed_email do
        label "Mail non confirmé"
      end
      field :failed_attempts do
        label "Erreur de connexion"
      end      
      field :unlock_token do
        label "Jeton de déverouillage"
      end
      field :locked_at do
        label "Compte bloqué le"
      end
      field :created_at do
        label "Compte crée le"
      end
      field :updated_at do
        label "Compte mis à jour le"
      end
      field :is_admin do
        label "Administrateur?"
      end         
    end    
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable, :lockable, :async

  has_many :authentications, dependent: :destroy, validate: false, inverse_of: :user do
    def grouped_with_oauth
      includes(:oauth_cache).group_by {|a| a.provider }
    end
  end

  after_create :send_welcome_emails

  def display_name
    first_name.presence || email.split('@')[0]
  end

  # Case insensitive email lookup.
  #
  # See Devise.config.case_insensitive_keys.
  # Devise does not automatically downcase email lookups.
  def self.find_by_email(email)
    find_by(email: email.downcase)
    # Use ILIKE if using PostgreSQL and Devise.config.case_insensitive_keys=[]
    #where('email ILIKE ?', email).first
  end

  # Override Devise to allow for Authentication or password.
  #
  # An invalid authentication is allowed for a new record since the record
  # needs to first be saved before the authentication.user_id can be set.
  def password_required?
    if authentications.empty?
      super || encrypted_password.blank?
    elsif new_record?
      false
    else
      super || encrypted_password.blank? && authentications.find{|a| a.valid?}.nil?
    end
  end

  # Merge attributes from Authentication if User attribute is blank.
  #
  # If User has fields that do not match the Authentication field name,
  # modify this method as needed.
  def reverse_merge_attributes_from_auth(auth)
    auth.oauth_data.each do |k, v|
      self[k] = v if self.respond_to?("#{k}=") && self[k].blank?
    end
  end

  # Do not require email confirmation to login or perform actions
  def confirmation_required?
    false
  end

  def send_welcome_emails
    UserMailer.delay.welcome_email(self.id)
    # UserMailer.delay_for(5.days).find_more_friends_email(self.id)
  end
end
