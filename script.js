const wybor = document.querySelectorAll(".wybor")
const audiodiv = document.getElementById("audiodiv")

for(let w of wybor)
{
    w.addEventListener("click",function()
    {
        audiodiv.innerHTML = w.dataset.link
    })
}