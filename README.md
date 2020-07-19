# Everything API 

Source code for everything api website

## Categories

Set up API Resources in following categories

- [ ] Tutorials
- [ ] Testing
- [ ] Mocking
- [ ] Services
- [ ] API Gateways
- [ ] Standards
- [ ] Client Tools
- [ ] Server Frameworks
- [ ] Public APIs
- [ ] Documentation
- [ ] Code Generators / Modelling Tools
- [ ] Security
- [ ] Developer Portal
- [ ] Guides
- [ ] Blogs
- [ ] OpenSource

## ETL 

```
./importer/all_commands.sh
./importer/all_screenshots.sh
./importer/resize-screenshots.sh
./importer/all_md_generator.sh
```

## Todo

- [x] Create a new SQLite database
- [x] Store links, brief description and categories in database
- [x] Store Screenshot for each website in database
- [x] Check if Github and mark link as OpenSource (Github)
- [x] Generate smaller screenshot to display on website
- [x] Generate Markdown page entries for each tool
- [x] Customise Hugo theme to display tools with pagination
- [x] Sort links in "To Sort"
- [ ] Add Search
- [ ] Add Details Page
- [ ] Domain and publish

## Reference Websites

- [x] https://github.com/Kikobeats/awesome-api
- [x] https://github.com/marmelab/awesome-rest
- [x] https://github.com/yosriady/api-development-tools
- [ ] https://github.com/mailtoharshit/Awesome-Api-Management-Tools
- [ ] https://github.com/unicodeveloper/awesome-documentation-tools

## Commands

```bash
$ sqlite3 api_tools_web.db "select website from api_resources" > websites.txt
```