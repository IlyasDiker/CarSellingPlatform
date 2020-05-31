<%-- 
    Document   : AjouterAnnonce
    Created on : May 30, 2020, 2:15:06 PM
    Author     : Ilyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter Annonce</title>
    </head>
    <body>
        <%@include file="../Main/header.jsp"%>
        <%@include file="../scripts/checkidentity.jsp"%>
        <div class="content">
            <form action="../scripts/script-addannounce.jsp" method="POST">
                <div class="jumbotron">
                    <h2 class="display-4">Informations générales</h2>
                    <div class="row">
                        <div class="col-6">
                            <br/>
                            <div class="form-group">
                                <label for="title">Titre de votre Annonce</label>
                                <input type="text" class="form-control" id="title" name="title" aria-describedby="title">
                                <small id="titlehelp" class="form-text text-muted">Veuillez entrer un titre Simple et Claire.</small>
                              </div>
                            <div class="row">
                                <div class="form-group col-6">
                                <label for="brand">Marque</label>
                                <input type="text" class="form-control" name="brand" id="brand">
                              </div>
                             <div class="form-group col-6">
                                <label for="model">Model</label>
                                <input type="text" class="form-control" name="model" id="model">
                              </div>
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="number"  class="form-control" name="price" id="price">
                              </div>
                             <div class="form-group">
                                <label for="exampleFormControlFile1">Image</label>
                                <input type="text" class="form-control" placeholder="Upload Picture on imgur & past the link" name="blob" id="exampleFormControlFile1">
                              </div>
                              
                            </div>
                        <div class="col-6"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 700 700"><path fill="#eaf4ff" d="M452.6 368.9c0 54.3-35.5 78.7-79 78.7-43.6 0-79-24.4-79-78.7 0-101.2 43.1-195.7 79-195.7 35.9.1 79 94.6 79 195.7z"></path><path fill="#cae1fd" d="M369.6 277h8v204h-8zM387.477 390.394l21.99-21.99 3.748 3.747-21.99 21.99zM387.451 302.77l21.991-21.991 3.748 3.747-21.991 21.991zM336.458 371.873l3.748-3.747 22.203 22.202-3.748 3.748zM335.159 328.677l3.747-3.747 22.203 22.202-3.747 3.748zM146.4 266.7c-3-9.1-19.7-7.5-19.7-32.9 0-38.1 52.5-33.8 55.6-62.5s-30.7-28-31.7-52.3c-1-24.2 24.6-74.2 63.6-74.2 30.7 0 5.3 38.6 30.1 55.8s53.1-4.9 67.1 22.3c19.3 37.4-30 82.3-25.2 110.9s33.8 21.9 34.7 53.4-41.1 37-37.2 64c2.5 17 29.1 11.3 30.5 44.9 1.2 28.4-90.2 63.6-158.8 5.8s2.6-100.6-9-135.2z"></path><g fill="#eaf4ff"><path d="M217.6 193.9h8v287.2h-8zM228.01 378.224l22.768-22.768 4.525 4.525-22.768 22.769zM226.583 276.924l22.769-22.769 4.525 4.525-22.768 22.77zM226.568 224.709l22.768-22.77 4.526 4.526-22.769 22.769zM185.966 226.662l4.525-4.525 22.769 22.768-4.526 4.526zM187.873 281.447l4.525-4.526 22.769 22.769-4.526 4.525zM226.554 324.694l22.769-22.769 4.525 4.526-22.769 22.768z"></path><path d="M190.471 332.283l4.525-4.526 22.77 22.769-4.526 4.525zM190.46 386.372l4.526-4.526 22.768 22.769-4.525 4.525z"></path><path d="M204.2 410.1c0 44.5-18.4 84.8-60 84.8s-60-40.4-60-84.8c0-52.1 31.5-104 60-104s60 51.8 60 104z"></path></g><path fill="#daecfd" d="M140.2 396.5h8v134.6h-8zM157.86 416.037l19.754-22.177 3.958 3.525-19.754 22.177zM106.682 434.947l3.958-3.525 19.753 22.18-3.958 3.525zM106.692 398.257l3.958-3.525 19.753 22.18-3.958 3.525z"></path><path fill="#2d75b8" d="M487.2 242.8s22.7-25.5 52.8 3.1c0 0-36.4 16.4-52.8-3.1z"></path><path fill="#f1bba1" d="M398.8 326.9l-3.6-.4c-1.8-.1-3.5-.1-5.3 0-2.8.2-6.1 1.9-10.8-.4s-1.7 2.7.6 3.9c1.9 1 5.9.8 7.3 1.9-.3.5-.8 1-1.2 1.4l-14 9.5c-.5.3-.6.9-.4 1.4l.3.6c.3.6.9.8 1.5.5h.1c3.1-1.8 12.1-7.5 12.2-7.3l.3.3-13.5 11.3c-.4.3-.6 1-.3 1.5l.5.7c.3.5 1 .7 1.5.4h.1c3.2-2.2 13.6-10.6 13.7-10.4l.3.4-10.6 10.6c-.5.4-.6 1-.2 1.5l.4.6c.4.5 1.1.6 1.6.3l10.6-10 .5.3-7 8.8c-.4.4-.4 1-.1 1.5l.2.3c.4.5 1.1.6 1.6.2 1.7-1.2 4.6-5.3 8.1-8.4 2.7-2.4 5.2-3.5 8.3-6.9 1.3-1.4 2.4-3.9 3.1-5.2l-5.8-8.9s26.9-18.3 38.1-23.1 15 .6 15 .6 1.4 10.8-6.5 15.1-28.8 11.1-28.8 11.1-10.8 4.2-12.1 5.1z"></path><path fill="#225ea7" d="M459.3 414.7s116.7 2.7 194.3 12.2h-189z"></path><path fill="#3c3338" d="M419.4 373.2s44.7 29.7 69.1 49.6H461l-49.2-43.7z"></path><path fill="#33343b" d="M268.5 514.3H109.7c-.9 0-1.6-.7-1.6-1.6v-3.5c0-.9.7-1.6 1.6-1.6h158.7c.9 0 1.6.7 1.6 1.6v3.5c.1.8-.6 1.6-1.5 1.6z"></path><path fill="#1b1c1c" d="M633.8 504.9H458.6c-3.5 0-6.3-2.8-6.3-6.3v-18.1c0-3.5 2.8-6.3 6.3-6.3h175.2c3.5 0 6.3 2.8 6.3 6.3v18.1c0 3.5-2.8 6.3-6.3 6.3z"></path><path fill="#022632" d="M360.1 516.6H249.9c-3.5 0-6.3-2.8-6.3-6.3v-7.5c0-3.5 2.8-6.3 6.3-6.3h110.2c3.5 0 6.3 2.8 6.3 6.3v7.5c-.1 3.5-2.9 6.3-6.3 6.3z"></path><path fill="#225ea7" d="M160.9 504.1l106.7 6.8h233.5L620 498.3l44.2-10.3 11.2-28.7v-3.2l-75.7-13.7H92l-28.4 17.8v2.8l19.7 34.2 3.4.3z"></path><path fill="#e6e6e6" d="M368.1 531.2c-169.8 0-307.4 4.7-307.4 10.4 0 5.8 137.6 10.4 307.4 10.4s307.4-4.7 307.4-10.4c.1-5.8-137.6-10.4-307.4-10.4z"></path><path fill="#cccecf" d="M618.5 483.1l40-2.3 8.3-20s.7-1.4 2.3-1.4h11.2s1.5.4.5 3.5c0 0-6.7 24.9-14.2 34.3 0 0-1.6 1.9-6.1 1.9l-37.7.9c-1.5 0-2.7-1.1-2.8-2.5zM58.3 466.9c-.6-1.2-.3-2.7.7-3.6.3-.2.6-.4 1-.4h8.2c.9 0 1.7.5 2 1.4L84.4 500c.3.7-.3 1.5-1 1.4-2.6-.2-7.8-1-10.4-5.2z"></path><path fill="#3c73b5" d="M673 431.5s-1.9-4.3-7.2-4.3l-192.6-4.7c-.7 0-1.4-.2-2.1-.5-2.1 2.7-5.2 2.7-5.2 2.7H319.7c-32.1-7.6-110.6-2.7-110.6-2.7l-139 10.7s-2.3.2-3.6 4.5l-4.7 21.9s0 1.1 1.8 1.1h7.7L86.7 498c.5 1.2 1.6 1.9 2.8 2l70.3 5.9s11.2-22.3 22.8-32.7c0 0 10.9-10.1 31.1-10.1 0 0 35.5-1.6 43.3 10.3 0 0 8.7 11 10.7 31.9.1 1.3 1.2 2.3 2.5 2.3h228.6c1.1 0 2.2-.6 2.8-1.6 4-6.7 20.1-33.1 29.6-41.4 0 0 13.2-15.6 39.5-15.6 0 0 29.5-1.7 39.2 11.6 0 0 6 8.5 8.1 19.4l38.9-2.7 7.4-18.7s1.9-2.6 6-2.6h6.3c.1.1-1-16.9-3.6-24.5z"></path><path fill="#3c73b5" d="M319.7 424.7H466s3 0 5.2-2.7c-.7-.3-1.3-.7-1.8-1.3-5-5.4-22.4-23-53-40.8-.6-.4-.8-1.2-.3-1.7.8-1 2.1-2.8 3.8-5.7.4-.6.1-1.4-.5-1.7-1.9-1-5.4-2.9-5.4-2.9s-70.4-5.4-145.9 9.5c0 0-41.9 29.6-58.9 44.7-.1 0 78.3-5 110.5 2.6z"></path><path fill="#fff" d="M272.8 385.5c58.4-15.1 114.3-17.6 135.8-18-17.7-.9-77.3-2.7-140.6 9.8 0 0-41.9 29.6-58.9 44.7 0 0 8.6-.5 21.2-1 18.3-16.1 42.5-35.5 42.5-35.5z" opacity="0.23"></path><path fill="#cccecf" d="M500.1 513.4H268.6c-.6 0-1-.4-1-1v-3c0-.6.4-1 1-1H500c.6 0 1 .4 1 1v3c.1.6-.4 1-.9 1zM105 450.2H80.2l1.3-3.6h24.8z"></path><path fill="#414141" d="M319.7 424.7l14.7 74.9h128.8v-74.9zm141.2 72.7H336.2L322.4 427h138.5z" opacity="0.21"></path><path fill="#414141" d="M360.1 439.7c-.7.3-1.4.3-2.2.3-4.1.3-8.2.5-12.3.8-3 .2-6.1.5-9.1.7-1.4.1-2.5-1.6-2.5-3.7 0-2 1.1-3.7 2.4-3.7h20.8c1.1 0 2.5-.2 3.5.4 2 1.3 1.4 4.4-.6 5.2z" opacity="0.21"></path><path fill="#cccecf" d="M357.9 437c-.6.1-1.2.2-1.8.2-3.4.1-6.7.3-10.1.5-2.5.1-5 .3-7.5.4-1.1.1-2.1-.9-2.1-2.1s.9-2.1 2-2.1h17.2c.9 0 2-.1 2.9.2 1.5.7 1 2.5-.6 2.9z"></path><path fill="#eee" d="M342 437c0 2-1.6 3.6-3.6 3.6s-3.6-1.6-3.6-3.6 1.6-3.6 3.6-3.6 3.6 1.6 3.6 3.6z"></path><path fill="#3c3338" d="M405.1 381.2c-13.7 0-63.7.5-105.1 5.2-2.6.3-4.8 2.1-5.6 4.7l-8.9 29.9s22.3.8 34 3.8h94.8l-8.5-43.5c-.1-.1-.4-.1-.7-.1zM411.6 383.4c-1.6-1.3-3.6-2.1-5.7-2.2l8.5 43.5h39s-9.2-15.4-41.8-41.3z"></path><path fill="#b7b9bb" d="M411.6 383.4c-1.6-1.3-3.6-2.1-5.7-2.2l8.5 43.5h39s-9.2-15.4-41.8-41.3zm-1.1 3.5c20.2 16.1 31.1 28.1 36.2 34.4h-29.5z"></path><path fill="#414141" d="M405.9 381.2h-.8c-13.7 0-63.7.5-105.1 5.2-2.6.3-4.8 2.1-5.6 4.7l-8.9 29.9s22.3.8 34 3.8h94.8zm-117.3 37.6l8.1-27.2c.5-1.7 1.9-2.9 3.6-3.1 40.1-4.5 88.3-5.1 103.7-5.2l7.6 39h-91.7c-9.4-2.2-24.8-3.2-31.3-3.5z" opacity="0.21"></path><path fill="#3c73b5" d="M610 460.8s6 8.5 8.1 19.4l38.9-2.7 7.4-18.7s1.9-2.6 6-2.6h6.3v-.3h-72c2.1 1.3 3.9 2.9 5.3 4.9zM63.6 460.3h7.7l15.4 37.8c.5 1.2 1.6 1.9 2.8 2l70.3 5.9s11.2-22.3 22.8-32.7c0 0 10.9-10.1 31.1-10.1 0 0 35.5-1.6 43.3 10.3 0 0 8.7 11 10.7 31.9.1 1.3 1.2 2.3 2.5 2.3h228.6c1.1 0 2.2-.6 2.8-1.6 4-6.7 20.1-33.1 29.6-41.4 0 0 3.9-4.6 11.8-8.9H62.5l-.7 3.3c0 .1 0 1.2 1.8 1.2z"></path><path fill="#414141" d="M619.2 492.2l.5 5.1c.1 1.4 1.4 2.5 2.8 2.5l37.7-.9c4.5 0 6.1-1.9 6.1-1.9 1.1-1.3 2.1-3 3.2-4.8zM72.9 496.2c2.6 4.2 7.8 5.1 10.4 5.2.8 0 1.3-.7 1-1.4l-3.5-8.8H70.4zM162.6 444.6h-17.8c-2.6 0-4.8 2.1-4.8 4.8v13c0 2.6 2.1 4.8 4.8 4.8h17.8c2.6 0 4.8-2.1 4.8-4.8v-13c-.1-2.7-2.2-4.8-4.8-4.8zm3 17.8c0 1.6-1.3 3-3 3h-17.8c-1.6 0-3-1.3-3-3v-13c0-1.6 1.3-3 3-3h17.8c1.6 0 3 1.3 3 3z" opacity="0.21"></path><circle cx="568.2" cy="504.8" r="49.7" fill="#4d4b4b"></circle><circle cx="568.2" cy="504.8" r="45" fill="#4d4b4b"></circle><circle cx="568.2" cy="504.8" r="32.3" fill="#b1b1b1"></circle><path fill="#232323" d="M578.4 498.3l11.7-3.8c1.6-.5 2.3-2.4 1.5-3.8-3.7-6.2-9.9-10.8-17.1-12.5-1.6-.4-3.1.9-3.1 2.5V493c0 1 .6 1.9 1.5 2.3 1.1.5 2.1 1.3 3 2.2.5.8 1.5 1.1 2.5.8zM565.1 493.1v-12.3c0-1.7-1.5-2.9-3.1-2.5-7.3 1.7-13.4 6.3-17.1 12.5-.9 1.4-.1 3.3 1.5 3.8l11.7 3.8c1 .3 2 0 2.7-.7.9-.9 1.9-1.6 3-2.2.7-.5 1.3-1.4 1.3-2.4zM557.7 504.8v-.2l-13.4-4.3c-1.6-.5-3.3.6-3.4 2.2-.1.8-.1 1.5-.1 2.3 0 6.8 2.5 13 6.7 17.8 1.1 1.2 3.1 1.1 4-.2l7.2-9.9c.6-.8.6-1.9.2-2.8-.7-1.4-1.2-3.1-1.2-4.9zM572.6 516.1c-.6-.8-1.6-1.2-2.5-1-.6.1-1.2.2-1.9.2s-1.3-.1-1.9-.2c-1-.2-2 .2-2.5 1l-7.2 9.9c-1 1.3-.5 3.3 1 3.9 3.3 1.4 6.8 2.2 10.6 2.2s7.4-.8 10.6-2.2c1.5-.6 2-2.6 1-3.9zM595.3 502.5c-.1-1.6-1.8-2.7-3.4-2.2l-13.4 4.3v.2c0 1.8-.4 3.4-1.2 4.9-.5.9-.4 2 .2 2.8l7.2 9.9c1 1.3 3 1.5 4 .2 4.1-4.8 6.7-11 6.7-17.8 0-.7 0-1.5-.1-2.3z"></path><circle cx="217.7" cy="516.6" r="49.7" fill="#4d4b4b"></circle><ellipse cx="217.7" cy="516.6" fill="#4d4b4b" rx="45" ry="45" transform="rotate(-80.781 217.709 516.597)"></ellipse><circle cx="217.7" cy="516.6" r="32.3" fill="#b1b1b1"></circle><path fill="#232323" d="M227.9 510.1l11.7-3.8c1.6-.5 2.3-2.4 1.5-3.8-3.7-6.2-9.9-10.8-17.1-12.5-1.6-.4-3.1.9-3.1 2.5v12.3c0 1 .6 1.9 1.5 2.3 1.1.5 2.1 1.3 3 2.2.5.8 1.5 1.1 2.5.8zM214.6 504.9v-12.3c0-1.7-1.5-2.9-3.1-2.5-7.3 1.7-13.4 6.3-17.1 12.5-.9 1.4-.1 3.3 1.5 3.8l11.7 3.8c1 .3 2 0 2.7-.7.9-.9 1.9-1.6 3-2.2.8-.5 1.3-1.4 1.3-2.4zM207.3 516.6v-.2l-13.4-4.3c-1.6-.5-3.3.6-3.4 2.2-.1.8-.1 1.5-.1 2.3 0 6.8 2.5 13 6.7 17.8 1.1 1.2 3.1 1.1 4-.2l7.2-9.9c.6-.8.6-1.9.2-2.8-.8-1.4-1.2-3.1-1.2-4.9zM222.1 527.9c-.6-.8-1.6-1.2-2.5-1-.6.1-1.2.2-1.9.2-.6 0-1.3-.1-1.9-.2-1-.2-2 .2-2.5 1l-7.2 9.9c-1 1.3-.5 3.3 1 3.9 3.3 1.4 6.8 2.2 10.6 2.2s7.4-.8 10.6-2.2c1.5-.6 2-2.6 1-3.9zM244.9 514.3c-.1-1.6-1.8-2.7-3.4-2.2l-13.4 4.3v.2c0 1.8-.4 3.4-1.2 4.9-.5.9-.4 2 .2 2.8l7.2 9.9c1 1.3 3 1.5 4 .2 4.1-4.8 6.7-11 6.7-17.8 0-.8-.1-1.5-.1-2.3z"></path><path fill="#f8b73c" d="M496 595.5c0-13 13.9-10.9 22.8-13-2.4 1.6-5.3 3.8-1.5 4.9 5.6 1.5 19.4 4.2 23 .1 1.4 3 .3 2.4.3 5.3 0 3.6-44.6 5.9-44.6 2.7z"></path><path fill="#f7c2ad" d="M517.3 587.4c-3.8-1-5.1-3.6.7-4.7 5.2-1 4.6-1.5 5.5-1.9 2.4-1.1 3.4-6.5 3.4-6.5l12.1.3s.9 12 1.3 12.9c-3.6 4.1-17.4 1.4-23-.1z"></path><path fill="#f8b73c" d="M439.6 592.4c0-11.2 15.2-11.4 25-13.5-2.6 1.7-5.8 4-1.7 5.2 6 1.7 19.3 7.7 23.2 3.3 1.5 3.3 1.8-.1 1.8 3-.1 4.1-48.3 5.4-48.3 2z"></path><path fill="#f7c2ad" d="M462.8 584.1c-4.1-1.2-5.4-4.1.9-5.1 5.6-.9 5.5-3 6.5-3.4 2.7-1.2 3.6-5.4 3.6-5.4l11.4-.1s.4 16.4.8 17.4c-3.9 4.3-17.1-1.7-23.2-3.4z"></path><path fill="#131231" d="M489.8 572.5l6.7-103.1 5.1-107.3 19.8 213.1 20 .1s7.6-48.6 3.2-75.1l-4.4-50 4.4-109.8s-60.6 7.3-79-3.7l6.6 234.8z"></path><path fill="#2d75b8" d="M401.8 342.3s38.3-3.9 71.4-38.1l14.1-61.6s-62.7 72.6-92.2 79.8z"></path><path fill="#2c6fa6" d="M469.8 308.6l13.6-58s-26.7 29.4-32.3 71.9l9-6.2"></path><path fill="#2d75b8" d="M539.8 245.8l-12.9.1-20.3-1.5-19.4-1.7s-17.6 20.9-21.8 95.8c0 0 23 24.4 76 3.5z"></path><path fill="#2d75b8" d="M530 351.9l17 18.7s19.5-19.9 22.2-67.4c.1-1.1.2-2.3.3-3.4.1-1.6.3-4.9-.4-9.1-1.3-8.7-11.1-24.7-16.9-31.4L540 245.9s-11.7 8.1-4.2 41.3c0 0 6.4 8.7 4.6 21-.6 4.3-1.1 8.6-1.4 12.9-.4 5.6-2.3 15.3-9 30.8z"></path><path fill="#f7c2ad" d="M541.3 363.2l-6.5 13.4s-9-11.2-10.1-16.7c0 0 6.4.3 8.3-4.7z"></path><path fill="#e6806c" d="M512.6 205.9c-1.1 0-1.9-.9-2-1-.2-.3-.2-.7.1-1 .3-.2.7-.2 1 .1.1.1.5.5.9.5.2 0 .5-.2.7-.5s.7-.4 1-.1c.3.2.4.7.1 1-.7.8-1.3 1-1.8 1zM501.1 206.8c-.2 0-.4-.1-.6-.3-.4-.5-.6-.6-.7-.6-.4 0-.7-.2-.8-.6s.2-.8.6-.8c.2 0 1.1-.1 2 1.1.2.3.2.8-.1 1-.1.1-.2.2-.4.2z"></path><path d="M505.9 221.6s14 2.4 14.9 5.6c1 3.3.3 1 .3 1l.2-1.4v-10.2c.1 0-10.3 6.2-15.4 5z"></path><path fill="#f7c2ad" d="M511.7 244.4c-5.7 0-10.3-4.6-10.3-10.3v-19.9c0-5.7 4.6-10.3 10.3-10.3 5.7 0 10.3 4.6 10.3 10.3v19.9c-.1 5.7-4.7 10.3-10.3 10.3z"></path><path fill="#bd8e81" d="M521.8 229.1l.1-.8v-11.2s-3.9 7.9-16.3 3.9c0 0 15.8 2.1 15.7 7.7M520.9 203.1c2.6-.8 4.9 2 3.3 4.3 0 .1-.1.1-.1.2-1.8 2.4-4.4 1-4.4 1"></path><path fill="#f7c2ad" d="M512.2 223.2c-5.9 0-10.7-4.8-10.7-10.7v-12.7c0-5.9 4.8-10.7 10.7-10.7 5.9 0 10.7 4.8 10.7 10.7v12.7c.1 5.9-4.7 10.7-10.7 10.7z"></path><path fill="#e6806c" d="M517 211h-.3c-.5-.1-.9-.4-1.2-.9-.2-.3-.3-.6-.4-1 0-.1.1-.3.2-.3s.3.1.3.2l.3.9c.2.3.5.6.9.6.4.1.7 0 1-.2.5-.3.6-.8.5-1.1v-.1c-.5-1.6-.7-3.2-.7-4.9v-2.4c0-.1.1-.2.2-.2s.2.1.2.2v2.4c0 1.6.2 3.2.7 4.7v.1c.1.4 0 1.1-.6 1.6-.3.2-.7.4-1.1.4z"></path><path fill="#f7c2ad" d="M501.7 202.7c-2.6-.8-4.9 2-3.3 4.3 0 .1.1.1.1.2 1.8 2.4 4.4 1 4.4 1"></path><path fill="#4d4b4c" d="M501.6 198.1s-.1 1.7 1.7 3.2c.9.7 1.4 1.7 1.5 2.7 0 .4 0 .9-.1 1.4s-.6.9-1.2.9h-.2c-.6 0-1.1-.4-1.1-.9.1-1-.1-2.7-.6-2.7-1.1 0 0-4.6 0-4.6z"></path><path fill="#e6806c" d="M514.5 195.7c-.5 0-1.1-.2-1.7-.7-1.5-1.3-2.9-.1-3 0s-.2.1-.3 0-.1-.2 0-.3c0 0 1.8-1.6 3.6 0 1.5 1.3 2.9.1 3 0 0 0 .6-.6 1.4-.7.5 0 1.1.2 1.6.7.1.1.1.2 0 .3s-.2.1-.3 0c-1.3-1.2-2.3-.1-2.3 0-.1 0-.9.7-2 .7z"></path><path fill="#e6806c" d="M514.6 194.3c-1 0-1.8-.6-1.8-.6-.1-.1-.1-.2-.1-.3.1-.1.2-.1.3-.1s1.6 1.1 2.7 0c.1-.1.2-.1.3 0s.1.2 0 .3c-.3.5-.9.7-1.4.7z"></path><path fill="#444344" d="M509.5 202.1c-.1 0-.3 0-.4-.1-.2-.2-.3-.5-.1-.8.1-.1 2.2-2.5 5.6-1.5.3.1.5.4.4.7s-.4.5-.7.4c-2.8-.8-4.5 1.1-4.5 1.1 0 .1-.2.2-.3.2zM523.1 202.2c-.1 0-.3-.1-.4-.2-2-2.1-4.4-1.2-4.5-1.2-.3.1-.6 0-.7-.3s0-.6.3-.7c.1 0 3.1-1.1 5.6 1.5.2.2.2.6 0 .8 0 .1-.2.1-.3.1z"></path><path fill="#e6806c" d="M501.1 206.2c-.1 0-.1 0-.2-.1-.6-.8-1.1-.8-1.1-.8-.1 0-.2-.1-.3-.2 0-.1.1-.2.2-.3.1 0 .8-.1 1.6.9.1.1.1.3 0 .3-.1.2-.1.2-.2.2z"></path><path fill="#444344" d="M516.1 214.7c-2.2 0-3.8-1.2-3.9-1.2-.6-.4-.7-1.2-.3-1.8s1.2-.7 1.8-.3c.1.1 2.4 1.7 5-.1.6-.4 1.4-.3 1.8.3s.3 1.4-.3 1.8c-1.5 1-2.9 1.3-4.1 1.3z"></path><circle cx="510.5" cy="208.3" r="1.8" fill="#eaa690"></circle><circle cx="521.1" cy="208.5" r="1.8" fill="#eaa690"></circle><path fill="#e6806c" d="M511.4 204.7c-.1 0-.2-.1-.2-.2s.1-.2.2-.3c0 0 1.7-.2 3.4-.3.1 0 .2.1.3.2 0 .1-.1.2-.2.3-1.8.1-3.5.3-3.5.3zM522 204.8c-.1 0-.1 0 0 0l-3.4-.4c-.1 0-.2-.1-.2-.3 0-.1.1-.2.3-.2l3.4.4c.1 0 .2.1.2.3-.1.1-.2.2-.3.2z"></path><path fill="#2c6fa6" d="M534.1 341.4s14.2-26.2 4.3-48.9l-8.4-23s15.1 50.1 4.1 71.9z"></path></svg></div>
                    </div>
                    <div class="form-group">
                        <label for="description">Description <small>(Etat, Consomation, etc...).</small></label>
                        <textarea class="form-control" id="description" name="desc" rows="3"></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary block"><i class="fas fa-plus"></i>&nbsp;&nbsp; Déposer mon annonce</button>
                    </div>
                    
                </div>
            </form>
        </div>
    </body>
</html>