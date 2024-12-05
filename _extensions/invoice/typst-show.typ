#show: invoice.with(
$if(title)$
  title: "$title$",
  $if(description)$
    description: "$description$",
  $endif$
$endif$
$if(logo)$
  logo: "$logo$",
$endif$
$if(sender)$
  sender: (
    name: "$sender.name$",
    address: (
      street: "$sender.address.street$",
      city: "$sender.address.city$",
      state: "$sender.address.state$",
      zip: "$sender.address.zip$",
      country: "$sender.address.country$"
    ),
    email: "$sender.email$",
    registration: "$sender.registration$",
    vat: "$sender.vat$",
    exempted: "$sender.exempted$"
  ),
$endif$
$if(recipient)$
  recipient: (
    name: "$recipient.name$",
    address: (
      street: "$recipient.address.street$",
      city: "$recipient.address.city$",
      state: "$recipient.address.state$",
      zip: "$recipient.address.zip$",
      country: "$recipient.address.country$"
    )
  ),
$endif$
$if(invoice)$
  invoice: (
    number: "$invoice.number$",
    issued: "$invoice.issued$",
    due: "$invoice.due$",
    reference: "$invoice.reference$",
    fee: "$invoice.fee$",
    penalty: "$invoice.penalty$"
  ),
$endif$
$if(bank)$
  bank: (
    account: "$bank.account$",
    routing: "$bank.routing$"
  ),
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(margin)$
  margin: ($for(margin/pairs)$$margin.key$: $margin.value$,$endfor$),
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
$if(mainfont)$
  font: ("$mainfont$",),
$endif$
$if(fontsize)$
  fontsize: $fontsize$,
$endif$
)
