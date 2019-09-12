// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require bootstrap/js/bootstrap.bundle.min.js
//= require jquery/jquery.min.js
//= require jquery-easing/jquery.easing.min.js
//= require agency.js
//= require agency.min.js
//= require contact_me.js
//= require jqBootstrapValidation.js
//= require jquery3
//= require jquery_ujs


//= require jquery/jquery.min.js
//= require jquery/jquery-migrate.min.js
//= require popper/popper.min.js
//= require bootstrap/js/bootstrap.min.js
//= require easing/easing.min.js
//= require counterup/jquery.waypoints.min.js
//= require counterup/jquery.counterup.js
//= require owlcarousel/owl.carousel.min.js
//= require lightbox/js/lightbox.min.js
//= require typed/typed.min.js
//= require contactform.js
//= require main.js

//= require_tree .
$(document).ready(function () {
    var zindex = 10;

    $("div.card").click(function (e) {
        e.preventDefault();

        var isShowing = false;

        if ($(this).hasClass("show")) {
            isShowing = true
        }

        if ($("div.cards").hasClass("showing")) {
            // a card is already in view
            $("div.card.show")
                .removeClass("show");

            if (isShowing) {
                // this card was showing - reset the grid
                $("div.cards")
                    .removeClass("showing");
            } else {
                // this card isn't showing - get in with it
                $(this)
                    .css({ zIndex: zindex })
                    .addClass("show");

            }

            zindex++;

        } else {
            // no cards in view
            $("div.cards")
                .addClass("showing");
            $(this)
                .css({ zIndex: zindex })
                .addClass("show");

            zindex++;
        }

    });
});