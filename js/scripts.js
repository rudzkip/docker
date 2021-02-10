function toggleMenu() {
    const menuButton = document.querySelector('.header .header__button');
    const menuButtonOpen = document.querySelector('.header .header__button .button__open');
    const menuButtonClose = document.querySelector('.header .header__button .button__close');
    const menu = document.querySelector('.header .header__menu');

    menuButton.addEventListener('click', (function () {
        menuButton.classList.toggle('rotate');
        menuButtonOpen.classList.toggle('hide');
        menuButtonClose.classList.toggle('hide');
        menu.classList.toggle('slide');
    }));
};

window.addEventListener('load', function() {
    toggleMenu();
}, false);