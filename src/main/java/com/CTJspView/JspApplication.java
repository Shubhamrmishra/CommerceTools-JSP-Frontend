package com.CTJspView;

import com.CTJspView.config.CTClient;
import com.commercetools.api.client.ProjectApiRoot;
import com.commercetools.api.models.project.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JspApplication {
	static ProjectApiRoot apiRoot = CTClient.createApiClient();

	public static void main(String[] args) {
		SpringApplication.run(JspApplication.class, args);

		Project myProject = apiRoot
				.get()
				.executeBlocking()
				.getBody();

		System.out.println(myProject.getName());
	}

}
