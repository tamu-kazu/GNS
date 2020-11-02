window.addEventListener('load', function(){

  const firstScore = document.getElementById("first-score");
  firstScore.addEventListener("input", () => {
    const firstValue = firstScore.value;

  const secondScore = document.getElementById("second-score");
  secondScore.addEventListener("input", () => {
    const secondValue = secondScore.value;
  
  const totalScore = document.getElementById("total-score");
  totalScore.innerHTML = parseInt(firstValue) + parseInt(secondValue)
    
  })
})
})