@Echo off
FOR /L %%G IN (1,1,600) DO (
(echo 1 && echo %%G && echo n) | gcloud init --skip-diagnostics
)
Exit
