package kr.hs.sdh.toast.config;

import kr.hs.sdh.toast.entity.BankAccount;
import kr.hs.sdh.toast.entity.Customer;
import kr.hs.sdh.toast.model.CustomerDetails;
import kr.hs.sdh.toast.repository.AccountRepository;
import kr.hs.sdh.toast.repository.BankAccountRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import java.util.List;

@Configuration
class SecurityConfiguration {

    private final AccountRepository accountRepository;
    private final BankAccountRepository bankAccountRepository;

    SecurityConfiguration(
            final AccountRepository accountRepository,
            final BankAccountRepository bankAccountRepository
    ) {
        this.accountRepository = accountRepository;
        this.bankAccountRepository = bankAccountRepository;
    }

    @Bean
    SecurityFilterChain securityFilterChain(final HttpSecurity httpSecurity) throws Exception {
        return httpSecurity
            .authorizeHttpRequests(registry -> registry
                .requestMatchers("/favicon.ico", "/fonts/**", "/images/**", "/scripts/**", "/styles/**").permitAll()
                .requestMatchers("/login", "/register").anonymous()
                .anyRequest().authenticated()
            )
            .formLogin(config -> {
                config.loginPage("/login");
                config.loginProcessingUrl("/login");
                config.usernameParameter("id");
                config.passwordParameter("password");
                config.defaultSuccessUrl("/?continue");
                config.failureUrl("/login?error");
            })
            .userDetailsService(userId -> {
                final Customer customer = this.accountRepository.findById(userId);

                if (customer == null) {
                    throw new UsernameNotFoundException("아이디 또는 비밀번호가 올바르지 않습니다");
                }

                final String identity = customer.getPeople().getIdentity();
                final List<BankAccount> bankAccounts = this.bankAccountRepository.findAllByIdentity(identity);
                return new CustomerDetails(customer, bankAccounts);
            })
            .build();
    }

    @Bean
    PasswordEncoder passwordEncoder() {
        return new PasswordEncoder() {

            @Override
            public String encode(final CharSequence rawPassword) {
                return rawPassword.toString();
            }

            @Override
            public boolean matches(final CharSequence rawPassword, final String encodedPassword) {
                return encodedPassword.contains(rawPassword);
            }

        };
    }

}