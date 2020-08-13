

//navbar toggle btn for small screen
const navbarToggleBtn = document.querySelector('.navbar_togglebtn');
const navbarMenu = document.querySelector('.navbar_menu');
navbarToggleBtn.addEventListener('click', () => {
	navbarMenu.classList.toggle('open');
});


//filtering tip-categories
const tipBtnContainer = document.querySelector(".tips_categories");
const contentContainer = document.querySelector(".tips_contents");
const contents = document.querySelectorAll(".content");
tipBtnContainer.addEventListener("click", (e) => {
  const filter = e.target.dataset.filter || e.target.parentNode.dataset.filter;
  if (filter == null) {
    return;
  }
  
  //Remove selection from the previous item and select the new one
  const active = document.querySelector('.tips_btn.selected');
  active.classList.remove('selected');
  e.target.classList.add('selected');
  contents.forEach((content) => {
    contentContainer.classList.add('anim-out');
    if(filter === '*' || filter === content.dataset.type) {
    content.classList.remove('invisible');
    }else {
    content.classList.add('invisible');
    }  
  });
  
  setTimeout(() => {
	  contentContainer.classList.remove('anim-out');
	  
  }, 300);
});