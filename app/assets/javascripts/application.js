// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .

window.addEventListener("load", () => {
  const element = document.querySelector("#passover-form");
  element.addEventListener("ajax:success", (event) => {
    const [_data, _status, xhr] = event.detail;
    const passoverData = xhr.responseText;
    var parser=new DOMParser();
    var xmlDoc=parser.parseFromString(passoverData,"text/xml");
    var duration = xmlDoc.querySelector('#duration');
    var riseTime = xmlDoc.querySelector('#rise-time');
    console.log("pt----------------------");
    console.log(duration);
    console.log(riseTime);
    console.log("***********************************");
    document.getElementById("duration").innerHTML =
    duration.innerHTML;
    document.getElementById("rise-time").innerHTML =
    riseTime.innerHTML;
  });
  element.addEventListener("ajax:error", () => {
    element.insertAdjacentHTML("beforeend", "<p>ERROR</p>");
  });
});
