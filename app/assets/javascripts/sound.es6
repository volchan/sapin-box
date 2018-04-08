const playSound = el => {
  const url = el.dataset.url;
  const audio = new Audio(`https://${url}`);
  audio.play();
};

// el.innerHTML = "<i class='fas fa-circle-notch fa-spin'></i>";
// const url = el.dataset.url;
// const sound = new Howl({
//   src: [`https://${url}`]
// });
// sound.once("load", () => {
//   el.innerHTML = "<i class='fas fa-pause-circle'></i>";
//   sound.play();
// });
//
// sound.once("end", () => {
//   el.innerHTML = "<i class='fas fa-play-circle'></i>";
// })
