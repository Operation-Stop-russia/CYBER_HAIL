@Echo off

(echo 1 && echo y && echo n) | gcloud init --skip-diagnostics

FOR /L %%G IN (2,1,600) DO (
(echo 1 && echo %%G && echo n) | gcloud init --skip-diagnostics
)
Exit
