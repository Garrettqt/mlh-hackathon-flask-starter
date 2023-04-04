FROM postgres:15.2
RUN virtualenv venv\
source venv/bin/activate\
pip install -r requirements.txt\
su - postgres\
initdb\
pg_ctl -D /var/lib/postgresql/data -l logfile start\
exit\