# README

1. Copy and update application.yml.example to application.yml

2. Run EDITOR="mate --wait" bin/rails credentials:edit

3. Remove /config/credentials.yml.enc and run again EDITOR="mate --wait" bin/rails credentials:edit

4. Run rails db:seed