[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>

<body>
<div class="container">
    [#include '/_common/header.ftlh']

    <div class="card" style="width: 18rem;">
        [#if lektor.profilovyObrazek??]
            <img src="${lektor.profilovyObrazek}" class="card-img-top" alt="profilová fotka">
        [/#if]
        <div class="card-body">
            <h5 class="card-title">${lektor.jmeno} ${lektor.prijmeni}</h5>
            <p class="card-text">Role: ${lektor.role}</p>
        </div>
    </div>
    <div><a href="/lektori/">Zpět na seznam lektorů</a></div>
</div>
</body>
</html>
