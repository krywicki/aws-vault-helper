# aws-vault-helper
Simple helper to set session tokens into .aws/credentials file

This executes `aws-vault` and sets the session token into the appropriate credentials profile. This avoids additional `aws-vault` calls or
dealing with multiple shells having different session values.

## Setup

The `~/.aws/config` should contain sso profile entries as seen in the example below.

```bash
 22 [profile my-profile]
 23 sso_start_url = https://example-aws-sso.awsapps.com/start/
 24 sso_region = us-east-1
 25 sso_account_id = 012345678901
 26 sso_role_name = DevEngineering
 27 region = us-east-1
 ```

 The `~/.aws/credentials` file should just contain `aws_access_key_id` and `aws_secret_access_key` per profile (as found in `.aws/config`), as seen in the example below.

 ```bash
 [profile my-profile]
 aws_access_key_id=ABCDEFGHIJKLMNOP
 aws_secret_access_key=abcdefghijk123456789
 ```

## Running

Running `av-session-update.sh` on a target profile will fetch session credentials and place them into the `~/.aws/credentials` file, under the appropritate profile.

```bash
sh av-session.sh 'my-profile'
```
