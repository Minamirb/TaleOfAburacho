SAKES=`cat<<EOF
name:string
company:string
price:integer
url:string
recommend:string
category_id:integer
EOF`

rails g scaffold course $SAKES
git add .
git commit -a -m "generate scaffold SAKE."


FEELINGS=`cat<<EOF
sake_id:integer
member_id:integer
memo:string
doux_brut:string
bitter:string
rough:string
hard_right:string
umami:string
EOF`

rails g scaffold staff $FEELINGS
git add .
git commit -a -m "generate scaffold FEELING."


CATEGORIES=`cat<<EOF
name:string
EOF`

rails g scaffold school $CATEGORIES
git add .
git commit -a -m "generate scaffold CATEGORY."


HISTORIES=`cat<<EOF
sake_id:integer
member_id:integer
drunk:boolean
next_order:boolean
EOF`

rails g scaffold agent $HISTORIES
git add .
git commit -a -m "generate scaffold HISTORY."


CATEGORY_HISTORIES=`cat<<EOF
category_id:integer
member_id:integer
complete:boolean
EOF`

rails g scaffold realestate $CATEGORY_HISTORIES
git add .
git commit -a -m "generate scaffold CATEGORY_HISTORY."
