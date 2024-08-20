
#show: psc-report.with(
  $if(title)$
    title: "$title$",
  $endif$
  $if(author)$
    author: "$author$",
  $endif$
  $if(email)$
    email: "$email$",
  $endif$
  $if(toc)$
    toc: "$toc$",
  $endif$
  $if(params.proj)$
    proj: "$params.proj$",
  $endif$
)
