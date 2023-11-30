// logic for toggle money 
let eye=document.querySelector(".eye");
let num=document.querySelector(".num");
let star=document.querySelector(".star");
// num.style.display="none";

eye.addEventListener("click",()=>{
    if(num.classList.contains("hide")){
        // num.style.display="block";
        num.classList.remove("hide");
        star.classList.add("hide");
        eye.classList.add("close-eye");
        eye.classList.remove("eye");
    }else{
        star.classList.remove("hide");
        // num.style.display="none";
        eye.classList.add("eye");
        eye.classList.remove("close-eye");
        num.classList.add("hide");
    }
})



