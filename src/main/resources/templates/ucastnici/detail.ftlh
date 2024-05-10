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
        [#if ucastnik.profilovyObrazek??]
            <img src="${ucastnik.profilovyObrazek}" class="card-img-top" alt="profilová fotka">
        [#else]
            <small><em>profilová fotka neuvedena</em></small>
        [/#if]
        <div class="card-body">
            <h5 class="card-title">${ucastnik.jmeno}</h5>
            [#if ucastnik.bydliste??]
                <p class="card-text">Bydliště: ${ucastnik.bydliste}</p>
            [#else]
                <p class="card-text">Bydliště: neuvedeno</p>
            [/#if]
        </div>
    </div>
</div>
</body>
</html>
