# Alyce Public API

## Authentication Flow
![Image of authentication flow](https://alycecom.github.io/public-open-api/images/scheme.svg)
1. Login to [Enterprise Dashboard](https://dashboard.alyce.com) to activate Public API integration. 
2. Receive `client_id` and `client_secret` credentials. You will exchange them to the application Bearer access token. This token you will use then to make API requests. 
3. Store `client_id` and `client_secret` in your application code.
4. Before using API, exchange stored credentials by making a new request to `https://api.alyce.com/auth/token` endpoint.
5. Store received access token. Take care that it is temporary and will expire in a few hours (will be defined later).
6. Make API requests using Bearer authentication. 