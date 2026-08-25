import {Controller} from "@hotwired/stimulus"
export default class extends Controller{
    static targets=["input","error"]
    validate(){
        const value =this.inputTarget.value
        if(value.trim()==""){
            this.errorTarget.textContent="Please enter an email"
            return
        }
        if(value.length<3){
            this.errorTarget.textContent ="Enter 3 characters"
            return
        }
        if(/\s/.test(value)){
            this.errorTarget.textContent ="Email cannot contain spaces"
            return
        }

        this.errorTarget.textContent=""
    }
}
