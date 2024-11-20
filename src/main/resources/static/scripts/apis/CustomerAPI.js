const CustomerAPI = () => {
    const API_SERVER_HOST = 'http://localhost:8080';
    const prefix = `${API_SERVER_HOST}/customer`;
    const LoginPrefix = `${API_SERVER_HOST}/login`;
    const registerPrefix = `${API_SERVER_HOST}/register`;
    /**
     * Customer 객체를 입력받아 서버에 등록 요청을 하는 함수
     * @param {Customer} customer - Customer 객체
     * @throws {TypeError} customer가 Customer 타입이 아닌 경우 타입 에러 발생
     * @returns {Promise<boolean>}
     */
    const register = async (customer) => {
        const formData = customer.toFormData();
        const fetchInit = {
            method: "POST",
            body: formData
        }
        return await fetch(`${registerPrefix}`, fetchInit).then(response=> response.json())
    }
    return {register};
};

export default CustomerAPI;