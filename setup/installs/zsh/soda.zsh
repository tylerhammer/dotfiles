# Commands and Aliases for soda
export SODA_PATH="~/Documents/Development/Sendbird/internal/soda"
alias soda_build="docker build . -t soda"
alias soda_start="cd ${SODA_PATH}; docker-compose up -d"
alias soda_stop="cd ${SODA_PATH}; docker-compose down"
alias soda_restart="cd ${SODA_PATH}; docker-compose up -d -V"
alias soda_log="docker logs -f soda"
alias soda_log_api="cd ${SODA_PATH}; tail -f logs/api.log"
alias soda_log_ws="cd ${SODA_PATH}; tail -f logs/edge.log"
alias soda_log_worker="cd ${SODA_PATH}; tail -f logs/celery*.log"
alias soda_log_mq="cd ${SODA_PATH}; tail -f logs/mq_publish.log"

prepsoda() {
  cp $HOME/Documents/Development/Sendbird/sodaPrep/run-debug.sh $HOME/Documents/Development/Sendbird/internal/soda/.docker/
}