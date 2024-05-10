[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include '/_common/head.ftlh']
</head>

<body>
<div class="container">
    [#include '/_common/header.ftlh']

    [#list ucastnici]
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col"></th>
                <th scope="col">Jméno</th>
                <th scope="col">Typ</th>
                <th scope="col">Bydliště</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            [#items as ucastnik]
                <tr>
                    <td>${ucastnik?counter}</td>
                    <td>
                        [#if ucastnik.gender == "žena"]
                            <i class="las la-venus" style="color: red;"></i></td>
                        [#else]
                            <i class="las la-mars" style="color: blue;"></i></td>
                        [/#if]
                    <td>${ucastnik.jmeno}</td>
                    <td>${ucastnik.prijmeni}</td>
                    <td>[#if ucastnik.bydliste??]${ucastnik.bydliste}[#else]<em><small>neuvedeno</small></em>[/#if]</td>
                    <td><a href="/ucastnici/detail/${ucastnik?index}" class="btn btn-primary">Detail</a></td>
                </tr>
            [/#items]
            </tbody>
        </table>
    [#else]
        <div>
            <em>Seznam ucastniku je prázdný.</em>
        </div>
    [/#list]
</div>
</body>
</html>
