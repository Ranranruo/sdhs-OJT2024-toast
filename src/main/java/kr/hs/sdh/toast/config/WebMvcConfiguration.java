package kr.hs.sdh.toast.config;

import kr.hs.sdh.toast.controller.converter.MediaTypeConverter;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
class WebMvcConfiguration implements WebMvcConfigurer {

    @Override
    public final void addFormatters(final FormatterRegistry formatterRegistry) {
        final Converter<String, MediaType> mediaTypeConverter = new MediaTypeConverter();

        formatterRegistry.addConverter(mediaTypeConverter);
    }

}