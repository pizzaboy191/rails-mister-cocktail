import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["It's time to make some amazing cocktails!"],
    typeSpeed: 40,
    backspeed: 40,
    loop: true,
  });
}

export { loadDynamicBannerText };
