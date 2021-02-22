# Albert Project

## How to run

`
git clone git@github.com:bermudezcristian/albert.git
cd albert
./run.sh
`

## Custom Run

To run with specified values of variables, you should specify value to the following Environment Variables

| Variable | Required | Description |
| --- | --- | --- |
| GIT_USER_NAME | True | GitHub User Name |
| GIT_USER_EMAIL | True |GitHub User Email |
| GIT_COMMIT_USE_GPG | True | Sign commits using GPG |
| GIT_USER_GPG_KEY | True |GPG Key to sign commits |
| MACOS_NAME | False | Machine name (lowercase) |
| HOME_DIRECTORY | False | Home directory path (i.e. "/Users/wilfred) |
| LIST_OF_DIRECTORIES | False | Comma separated list of directories to create |
| FIREFOX_PERSONALIZATION | False | Set to "true" if you want to configure firefox |
