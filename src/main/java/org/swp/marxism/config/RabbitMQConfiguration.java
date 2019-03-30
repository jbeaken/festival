package org.swp.marxism.config;

import org.springframework.amqp.core.TopicExchange;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

@Configuration
public class RabbitMQConfiguration {
	
	@Autowired
	private Environment environment;
	
	@Bean
	public TopicExchange bookingExchange(@Value("${rabbitmq.exchange.name}") final String exchangeName) {
		return new TopicExchange(exchangeName);
	}

	@Bean
	public RabbitTemplate rabbitTemplate(final ConnectionFactory connectionFactory) {
		final RabbitTemplate rabbitTemplate = new RabbitTemplate(connectionFactory);
		rabbitTemplate.setMessageConverter(producerJackson2MessageConverter());
		return rabbitTemplate;
	}

	@Bean
	public Jackson2JsonMessageConverter producerJackson2MessageConverter() {
		return new Jackson2JsonMessageConverter();
	}
	

    @Bean
    public ConnectionFactory connectionFactory() {
    	
    	String password = environment.getProperty("rabbimq.user.password");
		String username = environment.getProperty("rabbimq.user.username");
		String hostname = environment.getProperty("rabbimq.hostname");
		
		CachingConnectionFactory connectionFactory = new CachingConnectionFactory(hostname);
		
    	connectionFactory.setUsername( username );
    	connectionFactory.setPassword( password );
    	
        return connectionFactory;
    }
}
