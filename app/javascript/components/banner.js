import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["It's time to make some amazing cocktails!"],
    typeSpeed: 40,
    backSpeed: 40,
    backDelay: 40,
    loop: true,
  });
}

export { loadDynamicBannerText };
