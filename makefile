start:
	- docker-compose up -d
npm-install:
	- docker-compose run npm npm install
npm-build:
	- docker-compose run npm npm run build
stop:
	- docker-compose stop
deploy:
	- echo "TechSchool frontend is upgrading"
	- git reset --hard
	- git pull
	- make npm-install
	- make npm-build
	- echo "TechSchool frontend upgrade successfully"
