const initState = {
    id: "",
    password: "",
    name: "",
    identity: "",
    email: "",
    contact: "",
    address: "",
    proxyCustomerHandler: {

    }
}

/**
 * @description Builder 패턴으로 생성한다.
 * @property {string} id 사용자 계정 아이디
 * @property {string} password 사용자 계정 비밀번호
 * @property {string} name 사용자 이름
 * @property {string} identity 사용자 주민등록번호
 * @property {string} email 사용자 이메일
 * @property {string} contact 사용자 연락처
 * @property {string} address 사용자 주소
 */
class Customer {
    /** @type{string} */ #id = initState.id;
    /** @type{string} */ #password = initState.password;
    /** @type{string} */ #name = initState.name;
    /** @type{string} */ #identity = initState.identity;
    /** @type{string} */ #email = initState.email;
    /** @type{string} */ #contact = initState.contact;
    /** @type{string} */ #address = initState.address;
    /** @type{object} */ #proxyCustomerHandler = initState.proxyCustomerHandler
    /**
     * Customer 생성자
     * @param {CustomerBuilder} builder
     * @returns {Customer}
     */
    constructor(builder) {
        this.#id = builder.getId();
        this.#password = builder.getPassword();
        this.#name = builder.getName();
        this.#identity = builder.getIdentity();
        this.#email = builder.getEmail();
        this.#contact = builder.getContact();
        this.#address = builder.getAddress();
        return new Proxy.revocable(this, this.#proxyCustomerHandler);
    }

    toFormData() {
        const formData = new FormData();
        formData.append("id", this.#id);
        formData.append("password", this.#password);
        formData.append("name", this.#name);
        formData.append("identity", this.#identity);
        formData.append("email", this.#email);
        formData.append("contact", this.#contact);
        formData.append("address", this.#address);
        return formData;
    }

    /** @returns {string} type */
    getType() {
        return "Customer"
    }

    /** @returns {string} id */
    getId() {
        return this.#id;
    }

    /** @param {string} id */
    setId(id) {
        this.#id = id;
    }

    /** @returns {string} password */
    getPassword() {
        return this.#password;
    }

    /** @param {string} password */
    setPassword(password) {
        this.#password = password;
    }

    /** @returns {string} name */
    getName() {
        return this.#name;
    }

    /** @param {string} name */
    setName(name) {
        this.#name = name;
    }

    /** @returns {string} identity */
    getIdentity() {
        return this.#identity;
    }

    /** @param {string} identity */
    setIdentity(identity) {
        this.#identity = identity;
    }

    /** @returns {string} email */
    getEmail() {
        return this.#email;
    }

    /** @param {string} email */
    setEmail(email) {
        this.#email = email;
    }

    /** @returns {string} contact */
    getContact() {
        return this.#contact;
    }

    /** @param {string} contact */
    setContact(contact) {
        this.#contact = contact;
    }

    /** @returns {string} address */
    getAddress() {
        return this.#address;
    }

    /** @param {string} address */
    setAddress(address) {
        this.#address = address;
    }

    /**
     * @typedef {Class} CustomerBuilder
     * @property {string} id
     * @property {string} password
     * @property {string} name
     * @property {string} identity
     * @property {string} email
     * @property {string} contact
     * @property {string} address
     * @property {() => string} getId
     * @property {(id: string) => this} setId
     * @property {() => string} getPassword
     * @property {(password: string) => this} setPassword
     * @property {() => string} getName
     * @property {(name: string) => this} setName
     * @property {() => string} getIdentity
     * @property {(identity: string) => this} setIdentity
     * @property {() => string} getEmail
     * @property {(email: string) => this} setEmail
     * @property {() => string} getContact
     * @property {(contact: string) => this} setContact
     * @property {() => string} getAddress
     * @property {(address: string) => this} setAddress
     */

    /** @type{CustomerBuilder} */
    static Builder = class {
        #id;
        #password;
        #name;
        #identity;
        #email;
        #contact;
        #address;

        /** @returns{string} id */
        getId() {
            return this.#id;
        }

        /** @param{string} id */
        setId(id) {
            this.#id = id
            return this;
        }

        /** @returns{string} password */
        getPassword() {
            return this.#password;
        }

        /** @param{string} password */
        setPassword(password) {
            this.#password = password
            return this;
        }

        /** @returns{string} name */
        getName() {
            return this.#name;
        }

        /** @param{string} name */
        setName(name) {
            this.#name = name
            return this;
        }

        /** @returns{string} identity */
        getIdentity() {
            return this.#identity;
        }

        /** @param{string} identity */
        setIdentity(identity) {
            this.#identity = identity
            return this;
        }

        /** @returns{string} email */
        getEmail() {
            return this.#email;
        }

        /** @param{string} email */
        setEmail(email) {
            this.#email = email
            return this;
        }

        /** @returns{string} contact */
        getContact() {
            return this.#contact;
        }

        /** @param{string} contact */
        setContact(contact) {
            this.#contact = contact
            return this;
        }

        /** @returns{string} address */
        getAddress() {
            return this.#address;
        }

        /** @param{string} address */
        setAddress(address) {
            this.#address = address
            return this;
        }
        build() {
            return new Customer(this)
        }
    }
}

export default Customer;