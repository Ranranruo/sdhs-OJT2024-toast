/**
 * css 선택자를 입력받아 HTMLElement을 반환하고 식별된 HTMLElement가 없으면 null을 반환한다.
 * @param {string} css 선택자
 * @returns {HTMLElement | null}
 */
const $ = (selector) => document.querySelector(selector);
Element.prototype.$ = function(selector) { return this.querySelector(selector)}
/**
 * css 선택자를 입력받아 HTMLElement을 반환하고 식별된 HTMLElement가 없으면 null을 반환한다.
 * @param {string} css 선택자
 * @returns {NodeListOf<HTMLElement> | null}
 */
const $$ = (selector) => document.querySelectorAll(selector);
Element.prototype.$$ = function(selector) { return this.querySelectorAll(selector)}

// /**
//  * @param{object} object
//  * @returns {FormData}
//  */
// const ObjectToFormData = (object) => {
//     const formData = new FormData();
//     for(const key in object){
//         formData.append(key, this[key]);
//         console.log(key, object[key])
//     }
//     console.log(formData.get("id"));
//     return formData;
// }