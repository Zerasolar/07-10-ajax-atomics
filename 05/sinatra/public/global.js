var finishLinks = document.getElementsByClassName("done_link");

var mark_task_done = function(event){

var req = new XMLHttpRequest();
link_with_task = this;

req.open("get", link_with_task.getAttribute("href"));

// finishLinks[i] represents each of the items in `finishLinks`.
    
req.send();

event.preventDefault();
}
  
for (var i=0; i < finishLinks.length; i++) {
  finishLinks[i].onclick = mark_task_done
}