# PgPass
A password manager server that encrypts passwords under the hood with pgp and your public key.

## Usage
1. Create a PGP keypair if you haven't already.
2. Upload your public key to the server and come up with an ID you want to use (for example: your email).
3. The client will automatically pick up your private key.
4. Have fun!

## Endpoints
- /register: POST your `public-key` and `id`
- /save-password: POST `password`, `name`, `id` and `email` for the certificate.
- /get-password: GET `name` and `id` for the parameters.
- /save-password-list: POST `id`, `password-list` and `email` for the parameters.
- /get-password-list: GET `id` for the parameter.
- /give-password: POST `id`, `password` and `email` for parameters. (This one is so that you can save passwords to someones vault without having access to it, will need ACL's)
