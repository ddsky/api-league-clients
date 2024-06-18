-module(apileague_verify_email_address_200_response).

-export([encode/1]).

-export_type([apileague_verify_email_address_200_response/0]).

-type apileague_verify_email_address_200_response() ::
    #{ 'email' => binary(),
       'domain' => binary(),
       'first_name' => binary(),
       'middle_name' => binary(),
       'last_name' => binary(),
       'full_name' => binary(),
       'username' => binary(),
       'image' => binary(),
       'result' => binary(),
       'disposable' => boolean(),
       'accept_all' => boolean(),
       'free_provider' => boolean()
     }.

encode(#{ 'email' := Email,
          'domain' := Domain,
          'first_name' := FirstName,
          'middle_name' := MiddleName,
          'last_name' := LastName,
          'full_name' := FullName,
          'username' := Username,
          'image' := Image,
          'result' := Result,
          'disposable' := Disposable,
          'accept_all' := AcceptAll,
          'free_provider' := FreeProvider
        }) ->
    #{ 'email' => Email,
       'domain' => Domain,
       'first_name' => FirstName,
       'middle_name' => MiddleName,
       'last_name' => LastName,
       'full_name' => FullName,
       'username' => Username,
       'image' => Image,
       'result' => Result,
       'disposable' => Disposable,
       'accept_all' => AcceptAll,
       'free_provider' => FreeProvider
     }.
