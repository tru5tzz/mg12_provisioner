/***************************************************************************//**
 * @file
 * @brief Silicon Labs PSA Crypto Transparent Driver functions for CRYPTO.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * SPDX-License-Identifier: Zlib
 *
 * The licensor of this software is Silicon Laboratories Inc.
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 ******************************************************************************/
#ifndef SLI_CRYPTO_TRANSPARENT_FUNCTIONS_H
#define SLI_CRYPTO_TRANSPARENT_FUNCTIONS_H

/// @cond DO_NOT_INCLUDE_WITH_DOXYGEN

/***************************************************************************//**
 * \addtogroup sl_psa_drivers
 * \{
 ******************************************************************************/

/***************************************************************************//**
 * \addtogroup sl_psa_drivers_crypto CRYPTO transparent PSA driver
 * \brief Driver plugin for Silicon Labs CRYPTO peripheral adhering to the PSA
 *        transparent accelerator specification.
 * \{
 ******************************************************************************/

#include "em_device.h"

#if defined(CRYPTO_PRESENT)

#include "sli_crypto_transparent_types.h"
// Replace inclusion of crypto_driver_common.h with the new psa driver interface
// header file when it becomes available.
#include "psa/crypto_driver_common.h"

/* NOTE: This header file will be autogenerated by PSA Crypto build system based on
 * the definitions in sli_crypto_transparent_driver.json. However, until such a system is
 * in place, we rely on manually writing the file */

#ifdef __cplusplus
extern "C" {
#endif

psa_status_t sli_crypto_transparent_driver_init(void);

psa_status_t sli_crypto_transparent_driver_deinit(void);

psa_status_t sli_crypto_transparent_hash_setup(sli_crypto_transparent_hash_operation_t *operation,
                                               psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_hash_update(sli_crypto_transparent_hash_operation_t *operation,
                                                const uint8_t *input,
                                                size_t input_length);

psa_status_t sli_crypto_transparent_hash_finish(sli_crypto_transparent_hash_operation_t *operation,
                                                uint8_t *hash,
                                                size_t hash_size,
                                                size_t *hash_length);

psa_status_t sli_crypto_transparent_hash_abort(sli_crypto_transparent_hash_operation_t *operation);

psa_status_t sli_crypto_transparent_hash_compute(psa_algorithm_t alg,
                                                 const uint8_t *input,
                                                 size_t input_length,
                                                 uint8_t *hash,
                                                 size_t hash_size,
                                                 size_t *hash_length);

psa_status_t sli_crypto_transparent_hash_clone(const sli_crypto_transparent_hash_operation_t *source_operation,
                                               sli_crypto_transparent_hash_operation_t *target_operation);

psa_status_t sli_crypto_transparent_mac_compute(const psa_key_attributes_t *attributes,
                                                const uint8_t *key_buffer,
                                                size_t key_buffer_size,
                                                psa_algorithm_t alg,
                                                const uint8_t *input,
                                                size_t input_length,
                                                uint8_t *mac,
                                                size_t mac_size,
                                                size_t *mac_length);

psa_status_t sli_crypto_transparent_mac_sign_setup(sli_crypto_transparent_mac_operation_t *operation,
                                                   const psa_key_attributes_t *attributes,
                                                   const uint8_t *key_buffer,
                                                   size_t key_buffer_size,
                                                   psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_mac_verify_setup(sli_crypto_transparent_mac_operation_t *operation,
                                                     const psa_key_attributes_t *attributes,
                                                     const uint8_t *key_buffer,
                                                     size_t key_buffer_size,
                                                     psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_mac_update(sli_crypto_transparent_mac_operation_t *operation,
                                               const uint8_t *input,
                                               size_t input_length);

psa_status_t sli_crypto_transparent_mac_sign_finish(sli_crypto_transparent_mac_operation_t *operation,
                                                    uint8_t *mac,
                                                    size_t mac_size,
                                                    size_t *mac_length);

psa_status_t sli_crypto_transparent_mac_verify_finish(sli_crypto_transparent_mac_operation_t *operation,
                                                      const uint8_t *mac,
                                                      size_t mac_length);

psa_status_t sli_crypto_transparent_mac_abort(sli_crypto_transparent_mac_operation_t *operation);

psa_status_t sli_crypto_transparent_cipher_encrypt(const psa_key_attributes_t *attributes,
                                                   const uint8_t *key_buffer,
                                                   size_t key_buffer_size,
                                                   psa_algorithm_t alg,
                                                   const uint8_t *iv,
                                                   size_t iv_length,
                                                   const uint8_t *input,
                                                   size_t input_length,
                                                   uint8_t *output,
                                                   size_t output_size,
                                                   size_t *output_length);

psa_status_t sli_crypto_transparent_cipher_decrypt(const psa_key_attributes_t *attributes,
                                                   const uint8_t *key_buffer,
                                                   size_t key_buffer_size,
                                                   psa_algorithm_t alg,
                                                   const uint8_t *input,
                                                   size_t input_length,
                                                   uint8_t *output,
                                                   size_t output_size,
                                                   size_t *output_length);

psa_status_t sli_crypto_transparent_cipher_encrypt_setup(sli_crypto_transparent_cipher_operation_t *operation,
                                                         const psa_key_attributes_t *attributes,
                                                         const uint8_t *key_buffer,
                                                         size_t key_buffer_size,
                                                         psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_cipher_decrypt_setup(sli_crypto_transparent_cipher_operation_t *operation,
                                                         const psa_key_attributes_t *attributes,
                                                         const uint8_t *key_buffer,
                                                         size_t key_buffer_size,
                                                         psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_cipher_set_iv(sli_crypto_transparent_cipher_operation_t *operation,
                                                  const uint8_t *iv,
                                                  size_t iv_length);

psa_status_t sli_crypto_transparent_cipher_update(sli_crypto_transparent_cipher_operation_t *operation,
                                                  const uint8_t *input,
                                                  size_t input_length,
                                                  uint8_t *output,
                                                  size_t output_size,
                                                  size_t *output_length);

psa_status_t sli_crypto_transparent_cipher_finish(sli_crypto_transparent_cipher_operation_t *operation,
                                                  uint8_t *output,
                                                  size_t output_size,
                                                  size_t *output_length);

psa_status_t sli_crypto_transparent_cipher_abort(sli_crypto_transparent_cipher_operation_t *operation);

psa_status_t sli_crypto_transparent_aead_encrypt(const psa_key_attributes_t *attributes,
                                                 const uint8_t *key_buffer,
                                                 size_t key_buffer_size,
                                                 psa_algorithm_t alg,
                                                 const uint8_t *nonce,
                                                 size_t nonce_length,
                                                 const uint8_t *additional_data,
                                                 size_t additional_data_length,
                                                 const uint8_t *plaintext,
                                                 size_t plaintext_length,
                                                 uint8_t *ciphertext,
                                                 size_t ciphertext_size,
                                                 size_t *ciphertext_length);

psa_status_t sli_crypto_transparent_aead_decrypt(const psa_key_attributes_t *attributes,
                                                 const uint8_t *key_buffer,
                                                 size_t key_buffer_size,
                                                 psa_algorithm_t alg,
                                                 const uint8_t *nonce,
                                                 size_t nonce_length,
                                                 const uint8_t *additional_data,
                                                 size_t additional_data_length,
                                                 const uint8_t *ciphertext,
                                                 size_t ciphertext_length,
                                                 uint8_t *plaintext,
                                                 size_t plaintext_size,
                                                 size_t *plaintext_length);

psa_status_t sli_crypto_transparent_aead_encrypt_tag(const psa_key_attributes_t *attributes,
                                                     const uint8_t *key_buffer,
                                                     size_t key_buffer_size,
                                                     psa_algorithm_t alg,
                                                     const uint8_t *nonce,
                                                     size_t nonce_length,
                                                     const uint8_t *additional_data,
                                                     size_t additional_data_length,
                                                     const uint8_t *plaintext,
                                                     size_t plaintext_length,
                                                     uint8_t *ciphertext,
                                                     size_t ciphertext_size,
                                                     size_t *ciphertext_length,
                                                     uint8_t *tag,
                                                     size_t tag_size,
                                                     size_t *tag_length);

psa_status_t sli_crypto_transparent_aead_decrypt_tag(const psa_key_attributes_t *attributes,
                                                     const uint8_t *key_buffer,
                                                     size_t key_buffer_size,
                                                     psa_algorithm_t alg,
                                                     const uint8_t *nonce,
                                                     size_t nonce_length,
                                                     const uint8_t *additional_data,
                                                     size_t additional_data_length,
                                                     const uint8_t *ciphertext,
                                                     size_t ciphertext_length,
                                                     const uint8_t* tag,
                                                     size_t tag_length,
                                                     uint8_t *plaintext,
                                                     size_t plaintext_size,
                                                     size_t *plaintext_length);

psa_status_t sli_crypto_transparent_aead_encrypt_setup(sli_crypto_transparent_aead_operation_t *operation,
                                                       const psa_key_attributes_t *attributes,
                                                       const uint8_t *key_buffer,
                                                       size_t key_buffer_size,
                                                       psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_aead_decrypt_setup(sli_crypto_transparent_aead_operation_t *operation,
                                                       const psa_key_attributes_t *attributes,
                                                       const uint8_t *key_buffer,
                                                       size_t key_buffer_size,
                                                       psa_algorithm_t alg);

psa_status_t sli_crypto_transparent_aead_set_nonce(sli_crypto_transparent_aead_operation_t *operation,
                                                   const uint8_t *nonce,
                                                   size_t nonce_length);

psa_status_t sli_crypto_transparent_aead_set_lengths(sli_crypto_transparent_aead_operation_t *operation,
                                                     size_t ad_length,
                                                     size_t plaintext_length);

psa_status_t sli_crypto_transparent_aead_update_ad(sli_crypto_transparent_aead_operation_t *operation,
                                                   const uint8_t *input,
                                                   size_t input_length);

psa_status_t sli_crypto_transparent_aead_update(sli_crypto_transparent_aead_operation_t *operation,
                                                const uint8_t *input,
                                                size_t input_length,
                                                uint8_t *output,
                                                size_t output_size,
                                                size_t *output_length);

psa_status_t sli_crypto_transparent_aead_finish(sli_crypto_transparent_aead_operation_t *operation,
                                                uint8_t *ciphertext,
                                                size_t ciphertext_size,
                                                size_t *ciphertext_length,
                                                uint8_t *tag,
                                                size_t tag_size,
                                                size_t *tag_length);

psa_status_t sli_crypto_transparent_aead_verify(sli_crypto_transparent_aead_operation_t *operation,
                                                uint8_t *plaintext,
                                                size_t plaintext_size,
                                                size_t *plaintext_length,
                                                const uint8_t *tag,
                                                size_t tag_length);

psa_status_t sli_crypto_transparent_aead_abort(sli_crypto_transparent_aead_operation_t *operation);

#ifdef __cplusplus
}
#endif

#endif // CRYPTO_PRESENT

/** \} (end addtogroup sl_psa_drivers_crypto) */
/** \} (end addtogroup sl_psa_drivers) */

/// @endcond

#endif // SLI_CRYPTO_TRANSPARENT_FUNCTIONS_H
