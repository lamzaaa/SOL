function initMapping() {
    $(".kv-header .navbar .navbar-brand a")
        .clone()
        .appendTo(".kv-header .navbar .main-nav .logo-main-menu");
    $("footer .col-right .footer-card").mapping({
        mobileWrapper: "footer .col-lef #footer-card",
        mobileMethod: "appendTo",
        desktopWrapper: "footer .col-right",
        desktopMethod: "appento",
        breakpoint: 991.98,
    });
}

function mainMenu() {
    $(".kv-header .navbar .kv-toggle").on("click", function() {
        $(".kv-header .navbar .main-nav").toggleClass("active");
    });
    $(".main-nav .close").on("click", function() {
        $(".main-nav").removeClass("active");
    });
    $(".kv-header .navbar .btn-search").on("click", function() {
        $("header .search-wrapper").toggleClass("active");
    });
    $("header .search-wrapper .close").on("click", function() {
        $("header .search-wrapper").removeClass("active");
    });
    $(".main-nav .item .nav-title .ri-arrow-drop-down-line").on(
        "click",
        function() {
            $(this).toggleClass("active");
            $(this).parent().siblings("ul").slideToggle("slow");
            $(".main-nav .item .nav-title .ri-arrow-drop-down-line")
                .not(this)
                .parent()
                .siblings("ul")
                .slideUp();
            $(".main-nav .item .nav-title .ri-arrow-drop-down-line")
                .not(this)
                .removeClass("active");
        }
    );
}

function listBanerSlide() {
    var myswiper = new Swiper(".home-banner .swiper-container", {
        loop: false,
        speed: 2500,
        effect: "fade",
        grabCursor: true,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        fadeEffect: {
            crossFade: true,
        },
        navigation: {
            nextEl: ".home-banner .swiper-button-next",
            prevEl: ".home-banner .swiper-button-prev",
        },
    });
    var swiper = new Swiper(".wrapper-slider .column-slide", {
        speed: 800,
        slidesPerView: 3,
        slidesPerColumn: 2,
        slidesPerColumnFill: "row",
        slidesPerGroup: 6,
        spaceBetween: 30,
        grabCursor: false,
        loop: false,
        navigation: {
            nextEl: ".wrapper-slider .swiper-button-next",
            prevEl: ".wrapper-slider .swiper-button-prev",
        },
        breakpoints: {
            1200: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            991: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            575: {
                slidesPerView: 2,
                spaceBetween: 15,
                pagination: {
                    el: ".wrapper-slider .swiper-pagination",
                    dynamicBullets: true,
                    clickable: true,
                    type: "bullets",
                },
            },
            375: {
                slidesPerView: 1,
                spaceBetween: 10,
                slidesPerColumn: 1,
                slidesPerGroup: 1,
                pagination: {
                    el: ".wrapper-slider .swiper-pagination",
                    dynamicBullets: true,
                    clickable: true,
                    type: "bullets",
                },
            },
        },
    });
    $(".single-swiper .swiper-container").each(function(index, element) {
        var $this = $(this);
        $this.addClass("instance-" + index);
        $this
            .parent()
            .find(".swiper-button-prev")
            .addClass("swiper-button-prev-" + index);
        $this
            .parent()
            .find(".swiper-button-next")
            .addClass("swiper-button-next-" + index);
        $this
            .parent()
            .find(".swiper-pagination")
            .addClass("swiper-pagination-" + index);
        var swiper = new Swiper(".instance-" + index, {
            observer: true,
            observeParents: true,
            speed: 800,
            slidesPerView: 9,
            slidesPerColumn: 3,
            slidesPerColumnFill: "row",
            slidesPerGroup: 3,
            spaceBetween: 30,
            grabCursor: false,
            loop: false,
            navigation: {
                nextEl: ".swiper-button-next-" + index,
                prevEl: ".swiper-button-prev-" + index,
            },
            breakpoints: {
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                },
                991: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                },
                575: {
                    slidesPerView: 3,
                    spaceBetween: 15,
                    slidesPerGroup: 1,
                    slidesPerColumn: 1,
                    pagination: {
                        el: ".swiper-pagination-" + index,
                        dynamicBullets: true,
                        clickable: true,
                        type: "bullets",
                    },
                },
                375: {
                    slidesPerView: 2,
                    spaceBetween: 15,
                    slidesPerGroup: 1,
                    slidesPerColumn: 1,
                    pagination: {
                        el: ".swiper-pagination-" + index,
                        dynamicBullets: true,
                        clickable: true,
                        type: "bullets",
                    },
                },
            },
        });
    });

    $(".project-item-col").each(function(index, element) {
        var $this = $(this);
        $this.find(".gallery-top").addClass("instance-gallery-top-" + index);
        $this
            .find(".gallery-thumbs")
            .addClass("instance-gallery-thumbs-" + index);
        $this
            .find(".swiper-button-prev")
            .addClass("swiper-button-prev-" + index);
        $this
            .find(".swiper-button-next")
            .addClass("swiper-button-next-" + index);
        $this.find(".swiper-pagination").addClass("swiper-pagination-" + index);
        var galleryThumbs = new Swiper(".instance-gallery-thumbs-" + index, {
            direction: "vertical",
            spaceBetween: 30,
            slidesPerView: 4,
            loop: false,
            freeMode: true,
            loopedSlides: 4,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            observer: true,
            observeParents: true,
            breakpoints: {
                991: {
                    slidesPerView: 4,
                    spaceBetween: 20,
                },
                767: {
                    slidesPerView: 4,
                    spaceBetween: 20,
                    direction: "horizontal",
                },
                375: {
                    slidesPerView: 4,
                    spaceBetween: 20,
                    direction: "horizontal",
                },
            },
        });
        var galleryTop = new Swiper(".instance-gallery-top-" + index, {
            observer: true,
            observeParents: true,
            spaceBetween: 10,
            loop: true,
            loopedSlides: 5,
            navigation: {
                nextEl: ".swiper-button-next-" + index,
                prevEl: ".swiper-button-prev-" + index,
            },
            thumbs: {
                swiper: galleryThumbs,
            },
        });
    });
    var swiper = new Swiper(".slide-other .swiper-container", {
        slidesPerView: 4,
        spaceBetween: 30,
        observer: true,
        observeParents: true,
        loop: true,
        navigation: {
            nextEl: ".slide-other .swiper-button-next",
            prevEl: ".slide-other .swiper-button-prev",
        },
        breakpoints: {
            1200: {
                slidesPerView: 4,
                spaceBetween: 30,
            },
            991: {
                slidesPerView: 3,
                spaceBetween: 30,
            },
            575: {
                slidesPerView: 2,
                spaceBetween: 15,
            },
            375: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
            320: {
                slidesPerView: 1,
                spaceBetween: 10,
            },
        },
    });
    var galleryThumbsNews = new Swiper(".slide-gallery .gallery-thumbs", {
        spaceBetween: 20,
        slidesPerView: 5,
        freeMode: true,
        loopedSlides: 5,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            767: {
                slidesPerView: 4,
            },
            991: {
                slidesPerView: 5,
            },
        },
    });
    var galleryTopNews = new Swiper(".slide-gallery .gallery-top", {
        spaceBetween: 10,
        navigation: {
            nextEl: ".slide-gallery .swiper-button-next",
            prevEl: ".slide-gallery .swiper-button-prev",
        },
        thumbs: {
            swiper: galleryThumbsNews,
        },
    });
}

const checkLayoutBanner = () => {
    const pagesBanner = $("#pagebanner");
    const heightHeader = $("header").outerHeight();
    const mainBanner = $("#home-banner");
    if (mainBanner.length >= 1) {
        $("main").css("padding-top", heightHeader);
    } else if (pagesBanner.length >= 1) {
        $("main").css("padding-top", heightHeader);
    } else {
        $("main").css("padding-top", heightHeader);
    }
};

function tabs() {
    $(".tabs > li").on("click", function() {
        let $panel = $(this).closest(".tab-panels");
        $panel.find("li.active").removeClass("active");
        $(this).addClass("active");
        let panelToShow = $(this).attr("rel");
        $panel.find(".panel.active").fadeOut(300, showNextPanel);

        function showNextPanel() {
            $(this).removeClass("active");
            $("#" + panelToShow).fadeIn(300, function() {
                $(this).addClass("active").fadeIn(300);
            });
        }
    });
    if ($(window).width() < 992 && ".catalog-box".length >= 1) {
        $(".catalog-box").on("click", function() {
            $(this).find(".material-icons").toggleClass("active");
            $(this).siblings(".tabs").slideToggle("slow");
        });
    }
}

function setBackgroundElement() {
    $("[setBackground]").each(function() {
        var background = $(this).attr("setBackground");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center",
        });
    });
    $("[setBackgroundRepeat]").each(function() {
        var background = $(this).attr("setBackgroundRepeat");
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat",
        });
    });
}

function projectDetail() {
    $(".project-item").on("click", function(e) {
        let $paddingtop = $(".project-item-col .project-detail").outerHeight();
        let $detailbox = $(this).next();
        $detailbox.toggleClass("active");
        $(".project-item-col").find(".arrow").slideToggle();
        if ($detailbox.hasClass("active")) {
            $(".project-item-col").css("padding-bottom", $paddingtop);
            $(".project-item-col").find(".project-detail.active").slideToggle();
        } else {
            $(".project-item-col").css("padding-bottom", 0);
            $(".project-item-col").find(".project-detail").slideUp();
        }
        $(".project-item-col .project-item")
            .not(this)
            .next()
            .removeClass("active");
        $(".project-item-col .project-item")
            .not(this)
            .parent(".project-item-col")
            .css("padding-bottom", 0);
        $(".project-item-col .project-item")
            .not(this)
            .parent(".project-item-col")
            .find(".arrow")
            .css("display", "none");
        var theTabs = $(".nav-tabs li");
        var i;

        function theTabClicks(tabClickEvent) {
            var clickedTab = tabClickEvent.currentTarget;
            var tabParent =
                tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
            var theTabs = tabParent.querySelectorAll(".nav-tabs li");
            for (var i = 0; i < theTabs.length; i++) {
                theTabs[i].classList.remove("active");
            }

            clickedTab.classList.add("active");
            tabClickEvent.preventDefault();
            var contentPanes = tabParent.querySelectorAll(".tab-pane");
            for (i = 0; i < contentPanes.length; i++) {
                contentPanes[i].classList.remove("active");
            }
            var anchorReference = tabClickEvent.target;
            var activePaneId = anchorReference.getAttribute("href");
            var activePane = tabParent.querySelector(activePaneId);
            activePane.classList.add("active");
        }
        for (i = 0; i < theTabs.length; i++) {
            theTabs[i].addEventListener("click", theTabClicks);
        }
    });
    $(".project-item-col")
        .find(".close ")
        .on("click", function() {
            $(".project-item-col")
                .find(".project-detail")
                .removeClass("active");
            $(".project-item-col").find(".project-detail").slideUp();
            $(".project-item-col").find(".arrow").css("display", "none");
            $(".project-item-col").css("padding-bottom", 0);
        });
}

function phantrang() {
    $(".modulepager")
        .find(".pagination")
        .find("li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage")
        .parent()
        .hide();
}

function Showmap() {
    $(".contact")
        .find(".item")
        .click(function() {
            $(this).addClass("active");
            var datahref = $(this).attr("data-href");
            $(".show-map")
                .find("iframe")
                .attr("src", function() {
                    return datahref;
                });
            $(".contact").find(".item").not(this).removeClass("active");
        });
}
$(document).ready(function() {
    initMapping();
    mainMenu();
    listBanerSlide();
    checkLayoutBanner();
    tabs();
    setBackgroundElement();
    projectDetail();
    Showmap();
    phantrang();
    $(function() {
        var $refreshButton = $("#refresh");
        var $results = $("#css_result");

        function refresh() {
            var css = $("style.cp-pen-styles").text();
            $results.html(css);
        }

        refresh();
        $refreshButton.click(refresh);

        $results.click(function() {
            $(this).select();
        });
    });
});