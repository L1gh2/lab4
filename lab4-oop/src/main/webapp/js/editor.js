let Auto = {
    name: "",
    body: "",
    transmission: "",
    year: 0,
    mileage: 0,
    idInDatabase: 0
};

function sendEditedAuto() {
    let xhrEdit = new XMLHttpRequest();
    Auto.name = document.getElementById("name").value;
    Auto.body = document.getElementById("body").value;
    Auto.transmission = document.getElementById("transmission").value;
    Auto.year = document.getElementById("year").value;
    Auto.mileage = document.getElementById("mileage").value;
    Auto.idInDatabase = location.search.split("=")[1];

    let autoJson = JSON.stringify(Auto);
    console.log(Auto);

    xhrEdit.open("POST", "saveChanges", true);
    xhrEdit.setRequestHeader('Content-Type', 'application/json');
    xhrEdit.send(autoJson);

    location.href = "read";
}
