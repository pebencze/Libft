/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pbencze <pbencze@student.42berlin.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/17 18:37:04 by pbencze           #+#    #+#             */
/*   Updated: 2024/05/19 17:27:45 by pbencze          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s)
{
	char	*duplicate;
	size_t	size;

	size = (ft_strlen(s) + 1);
	duplicate = malloc(size * sizeof(char));
	if (!duplicate)
		return (NULL);
	ft_strlcpy(duplicate, s, size);
	return (duplicate);
}
