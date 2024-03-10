
var liveOrders=null;

function getLiveOrders(){
  axios.get('/liveapi').then(function (response) {
    liveOrders.neworders=response.data.neworders;
    liveOrders.accepted=response.data.accepted;
    liveOrders.done=response.data.done;
    console.log(response.data);
  })
  .catch(function (error) {
    console.log(error);
  });
};

window.onload = function () {

    //VUE CART
    liveOrders = new Vue({
      el: '#liveorders',
      data: {
        neworders: [],
        accepted: [],
        done:[]
      }
    })

    getLiveOrders();
    setInterval(getLiveOrders, 5000);

}