let Auto = {
    name: "",
    body: "",
    transmission: "",
    year: 0,
    mileage: 0
};

function getData() {
    Auto.name = document.getElementById("name").value;
    Auto.body = document.getElementById("body").value;
    Auto.transmission = document.getElementById("transmission").value;
    Auto.year = document.getElementById("year").value;
    Auto.mileage = document.getElementById("mileage").value;

    let autoJson = JSON.stringify(Auto);
    let xhrWrite = new XMLHttpRequest();
    xhrWrite.open("POST", "write", true);
    xhrWrite.setRequestHeader('Content-Type', 'application/json');
    xhrWrite.send(autoJson);
}
