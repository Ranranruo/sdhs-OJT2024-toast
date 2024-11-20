package kr.hs.sdh.toast.controller.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.http.InvalidMediaTypeException;
import org.springframework.http.MediaType;

import java.util.Map;

public final class MediaTypeConverter implements Converter<String, MediaType> {

    private final Map<String, MediaType> mediaTypeMap;

    public MediaTypeConverter() {
        this.mediaTypeMap = Map.of(
            "form", MediaType.APPLICATION_FORM_URLENCODED,
            "json", MediaType.APPLICATION_JSON
        );
    }

    @Override
    public MediaType convert(final String mediaTypeName) {
        if (mediaTypeName.isBlank()) {
            return MediaType.APPLICATION_FORM_URLENCODED;
        }

        final String lowerMediaTypeName = mediaTypeName.toLowerCase();

        MediaType mediaType = this.mediaTypeMap.get(lowerMediaTypeName);

        if (mediaType == null) {
            try {
                mediaType = MediaType.valueOf(mediaTypeName);
            } catch (final InvalidMediaTypeException exception) {
                mediaType = MediaType.APPLICATION_FORM_URLENCODED;
            }
        }

        return mediaType;
    }

}