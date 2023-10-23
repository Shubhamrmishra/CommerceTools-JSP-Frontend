package com.CTJspView.config;


import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.defaultconfig.ApiRootBuilder;
import com.commercetools.api.defaultconfig.ServiceRegion;
import io.vrap.rmf.base.client.oauth2.ClientCredentials;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CTClient {

    @Bean
    public static ProjectApiRoot createApiClient() {


        final ProjectApiRoot apiRoot = ApiRootBuilder.of()
                .defaultClient(ClientCredentials.of()
                                .withClientId("vTzSCdiP_ZY_QJgqrZn00JWH")
                                .withClientSecret("imQSl8lj3YmyrMuGRzUtzOrJknbasZDR")
                                .build(),
                        ServiceRegion.GCP_AUSTRALIA_SOUTHEAST1).build("my-min-site");

        return apiRoot;


    }

}
