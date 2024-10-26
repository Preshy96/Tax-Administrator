;; SIP-010 Fungible Token Trait
(define-trait sip-010-trait
    (
        ;; Transfer from the caller to a new principal
        (transfer (uint principal principal) (response bool uint))
        ;; Get the token balance of owner
        (get-balance (principal) (response uint uint))
        ;; Get the total number of tokens
        (get-total-supply () (response uint uint))
        ;; Get the token decimals
        (get-decimals () (response uint uint))
        ;; Get the token name
        (get-name () (response (string-ascii 32) uint))
        ;; Get the token symbol
        (get-symbol () (response (string-ascii 32) uint))
        ;; Get the token URI
        (get-token-uri () (response (optional (string-utf8 256)) uint))
    )
)