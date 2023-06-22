function okFunction () { alert("I'm legitimate!"); } setTimeout(document.URL.split("#")[1], 1000); setTimeout(okFunction, 1000);
