# WebApis.xyz 

Source code for [https://www.webapis.xyz/](https://www.webapis.xyz/)

## Categories

Set up API Resources in following categories

- [ ] Api monitoring 
- [ ] Api security 
- [ ] Clients 
- [ ] Documentation 
- [ ] Frameworks 
- [ ] Misc 
- [ ] Mocking 
- [ ] Servers 
- [ ] Standards 
- [ ] Testing 
- [ ] Tools
 
## ETL 

```
$ ./importer/all_commands.sh && ./importer/all_screenshots.sh && ./importer/all_md_generator.sh && make serve

$ ./importer/resize-screenshots.sh # only if any new screenshot is required
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
- [x] Domain and publish
- [x] Optimise images
- [x] Create logo 

## Commands

Export website URLs from database

```bash
$ sqlite3 api_tools_web.db "select website from api_resources" > websites.txt
```