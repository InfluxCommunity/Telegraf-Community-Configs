# Submit a Config

To contribute a new config or enhance an existing config, submit a pull request to this repository.

> Submissions must be provided under the [Apache Public License v2](https://www.apache.org/licenses/LICENSE-2.0).



1. [Fork this repo](https://help.github.com/en/github/getting-started-with-github/fork-a-repo) on Github, and then clone it locally on your machine.
   ```
   git clone https://github.com/<your_github_name>/Telegraf-Community-Configs
   ```


2. Apply your changes to the clone repository on your local machine.


    * To submit and entirely new config, create a new directory for your config and create a `readme.md` that describes your config and how to use it. See the `Example_readme.md` file in this repository.


    * To update an existing config, make the changes to config files in the appropriate directory.

    > **Tip:** Replace any hard-coded URLs to InfluxDB in your Telegraf configurations with the `$INFLUX_HOST` environment variable so users can easily point it to their own InfluxDB instance location. For example: `urls = ["$INFLUX_HOST"]`

3. If you are submitting a new config, add it to the table of configs in the main `readme.md` file in the root of the repository.

    * The table lists configs alphabetically, so add a new row in the appropriate location
    * Use a short but descriptive name for your config in the first column
    * Link that name to your config's directory
    * Add a short (one sentence) description of what your config's use case in the second column
    * Add your name, either your real name, nickname or GitHub username to the last column

    Your row should look like this:
    ```
    | [config Name](config-directory/) | This is a description of the config | Your Name |
    ```

    > **Note:** Be sure to include the trailing `/` after your directory name.

4. Add and commit your changes and push them to Github. Include the `--signoff` flag when committing your changes to include your author information in the commit message.

    ```
    # Add your changes
    git add .

    # Commit your changes with a commit message
    git commit --signoff -m "your commit message"

    # Push your changes to your forked repository on Github
    git push
    ```

5. [Create the pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request-from-a-fork) for your changes. InfluxData community config maintainers will review your changes and, upon approval, will merge them into this repository. Our goal is to review every submission within 5 business days.

In the review process, we verify that you provide a manifest file and a readme.md with instructions for using the config. We reserve the right to reject or remove a config from this repository for any reason.

Once your config has been merged, start sharing it with the community! Link to it on Twitter, Reddit, or whatever social media you use. Let people on the [InfluxDB Community Slack](https://influxdata.com/slack) know about it too!


> Need help? You can find [support](../readme.md#support) information at the bottom of the main page.