const wybor = document.querySelectorAll(".wybor")
const audiodiv = document.getElementById("audiodiv")
const tytul_autor = document.querySelectorAll(".tytul_autor")
const wyszukaj = document.getElementById("wyszukaj")

for(let w of wybor)
{
    w.addEventListener("click",function()
    {
        audiodiv.innerHTML = w.dataset.link
    })
}

for(let ta of tytul_autor)
    {
        ta.addEventListener("input", function()
    {
        wyszukaj.style.display="block"
    })
    }