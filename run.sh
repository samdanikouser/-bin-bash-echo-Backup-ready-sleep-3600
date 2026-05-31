git config --global user.email "backup@system.com"
git config --global user.name "backup-bot"

git clone https://github.com/YOUR_USERNAME/YOUR_BACKUP_REPO.git

cp backup.sql YOUR_BACKUP_REPO/

cd YOUR_BACKUP_REPO
git add .
git commit -m "DB backup $(date)"
git push
