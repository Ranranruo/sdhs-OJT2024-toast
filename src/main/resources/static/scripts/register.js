import CustomerAPI from "./apis/CustomerAPI.js";
import Customer from "./entity/Customer.js";

const $header = $("header");
const $main = $("main");
const $footer = $("footer");

const $registerForm = $main.$("#register-form");

const customerAPI = CustomerAPI();

// form이 submit 되었을때
$registerForm.addEventListener("submit", async(event) => {
    event.preventDefault();
    const $$options = event.target;

    /** @type{Customer} */
    const customer = new Customer.Builder()
        .setId($$options["id"].value)
        .setPassword($$options["password"].value)
        .setName($$options["name"].value)
        .setIdentity($$options["identity"].value)
        .setEmail($$options["email"].value)
        .setContact($$options["contact"].value)
        .setAddress($$options["address"].value)
        .build();
    // const complete = await customerAPI.register(customer);
    if(complete){
        alert("회원가입 성공!")
        // location.href="/login";
    }
})