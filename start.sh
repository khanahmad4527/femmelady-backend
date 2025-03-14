# Fetch secrets from GCP Secret Manager with error handling
fetch_secret() {
    local secret_name=$1
    local env_var_name=$2
    local secret_value
    
    secret_value=$(gcloud secrets versions access latest --secret="${secret_name}")
    
    if [[ $? -ne 0 ]]; then
        echo "Error: Failed to fetch secret ${secret_name}" >&2
        exit 1
    fi
    
    export "${env_var_name}=${secret_value}"
}

# Call fetch_secret function for each variable
fetch_secret "UNTHAA_DB_DATABASE" "UNTHAA_DB_DATABASE"
fetch_secret "UNTHAA_DB_USER" "UNTHAA_DB_USER"
fetch_secret "UNTHAA_DB_PASSWORD" "UNTHAA_DB_PASSWORD"
fetch_secret "UNTHAA_AUTH_GOOGLE_CLIENT_ID" "UNTHAA_AUTH_GOOGLE_CLIENT_ID"
fetch_secret "UNTHAA_AUTH_GOOGLE_CLIENT_SECRET" "UNTHAA_AUTH_GOOGLE_CLIENT_SECRET"
fetch_secret "UNTHAA_SECRET" "UNTHAA_SECRET"
fetch_secret "UNTHAA_KEY" "UNTHAA_KEY"
fetch_secret "UNTHAA_ADMIN_EMAIL" "UNTHAA_ADMIN_EMAIL"
fetch_secret "UNTHAA_ADMIN_PASSWORD" "UNTHAA_ADMIN_PASSWORD"
fetch_secret "UNTHAA_STORAGE_R2_DRIVER" "UNTHAA_STORAGE_R2_DRIVER"
fetch_secret "UNTHAA_STORAGE_R2_KEY" "UNTHAA_STORAGE_R2_KEY"
fetch_secret "UNTHAA_STORAGE_R2_SECRET" "UNTHAA_STORAGE_R2_SECRET"
fetch_secret "UNTHAA_STORAGE_R2_BUCKET" "UNTHAA_STORAGE_R2_BUCKET"
fetch_secret "UNTHAA_STORAGE_R2_REGION" "UNTHAA_STORAGE_R2_REGION"
fetch_secret "UNTHAA_STORAGE_R2_ENDPOINT" "UNTHAA_STORAGE_R2_ENDPOINT"
fetch_secret "UNTHAA_REDIS_PASSWORD" "UNTHAA_REDIS_PASSWORD"
fetch_secret "EMAIL_SMTP_USER" "EMAIL_SMTP_USER"
fetch_secret "EMAIL_SMTP_PASSWORD" "EMAIL_SMTP_PASSWORD"
fetch_secret "PASSWORD_RESET_URL_ALLOW_LIST" "PASSWORD_RESET_URL_ALLOW_LIST"
fetch_secret "USER_REGISTER_URL_ALLOW_LIST" "USER_REGISTER_URL_ALLOW_LIST"
fetch_secret "AUTH_GOOGLE_REDIRECT_ALLOW_LIST" "AUTH_GOOGLE_REDIRECT_ALLOW_LIST"

# Start Docker Compose
docker compose up --build -d
