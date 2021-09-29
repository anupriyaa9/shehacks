let weather = {
    apiKey: "686be82807926e5e8497d9a3ad044e94",
    fetchWeather: function (city) {
      fetch(
        api_url1= "https://api.openweathermap.org/data/2.5/weather?q="+city+"&units=metric&appid="+this.apiKey,

      )
        .then((response) => {
          if (!response.ok) {
            alert("No Weather found.");
            throw new Error("No Weather found.");
          }
          return response.json();
        })
        .then((data) => this.displayWeather(data));
    },

    displayWeather: function (data) {
      const { name } = data;
      const { icon, description } = data.weather[0];
      const { temp, humidity } = data.main;
      const { speed } = data.wind;
      const { sunrise } = data.sys;
      const { sunset } = data.sys;
      const { temp_max, temp_min, pressure } = data.main;
      document.querySelector(".city").innerText = "Weather in " + name;
      document.querySelector(".icon").src = "https://openweathermap.org/img/wn/" + icon + ".png";
      document.querySelector(".description").innerText = description;
      document.querySelector(".temp").innerText = temp + "°C";
      document.querySelector(".humidity").innerText = "HUMIDITY: " + humidity + "%";
      document.querySelector(".wind").innerText = "WIND SPEED: " + speed + " km/h";
      document.querySelector(".sunrisetime").innerText= sunrise;
      document.querySelector(".sunsettime").innerText= sunset;
      document.querySelector(".temp_ma").innerText = temp_max + "°C";
      document.querySelector(".temp_mi").innerText = temp_min + "°C";
      document.querySelector(".press").innerText =  pressure + " hPa";
    },
    search: function () { 
      this.fetchWeather(document.querySelector(".search-bar").value);
    },
  };
  
   document.querySelector(".search button").addEventListener("click", function () {
    weather.search();
  });
  
   document.querySelector(".search-bar").addEventListener("keyup", function (event) {
      if (event.key == "Enter") {
        weather.search();
      }
    });
  
weather.fetchWeather("Singapore");