<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class checkOutRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {

        $emailValidation = auth()->user() ? 'required|email' : 'required|email|unique:users';

        return [
            'email' => $emailValidation,
            'name' => 'required',
            'address' => 'required',
            'city' => 'required',
            'province' => 'required',
            'postalcode' => 'required',
            'phone' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'email.unique' => 'you already have an acount with this email address please login to countenu'
        ];
    }
}