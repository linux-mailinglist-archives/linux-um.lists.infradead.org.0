Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE4C16B040
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 20:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZmL4n34lUWoxa6AELJwjX2mdJqR7jzeWUyLE9D+Ly+Q=; b=rFLKX3Xnz4yBPI
	p6DK1aoCBZ7D3IK7NN48FL9EkRjVOj/e8diZbHrBM0YljyNatPSmRVu+T9llMyh+CTCWRhH3D2865
	WjZI9EZjAu8kfRsRHmf9hqWu2sGO1ffPuDwq+j36K7SWfBig2jGPjjaEY4z0IAihoJ08quhfHUwm+
	gRCUDhmLx/1dK+u4VX6vgFDa3CYnPTo4zzdouLQoHYBgT1heAK+qe/mKMy6wU4pbtuJ1nidAGBcwk
	8Hos/hwPK6+IQBNSTxSR2p95fEJntXWdtro+Pyp+gcE6fzYDARkhB/x2/4rn5cVACUbyI98DYoSN8
	mc006dq9fxr6GD5uw2uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JP0-0007rX-Oo; Mon, 24 Feb 2020 19:28:26 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6JOx-0007rG-Ff
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 19:28:24 +0000
Received: by mail-yb1-xb43.google.com with SMTP id x9so3082640ybl.5
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 11:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pQ/Mv1lsK35PGwG/+EQQAX4t9NIVJij/qvcmgkXlig0=;
 b=cPXMnH/CWqMNUZqfPD0rS6L9xlDNK0R07aS//51rLjkkM+TpdkJlYWJFDr+CFjNkNE
 Bhljkrch4wHeufoFrhbeG4+ghD5xhgGHnrkss+hP85z2Xv3mm5Dnm/eVO2OqOz+GNadJ
 a5dzlBqwhy8XeQ79gY2dwlbbGtR2QegDex11kpJ28betp2YxH6vkx8haV3GYchOX0TuX
 fvqaX/aVqQii0jW2an9k0ZUBrLTi97/eQf0z30yjQKSISdJ9Fs5icr8Wwp2InVsTSjA+
 EvNAPijegjWiJ4tJ+Izxdep4iTJa9mwNqwcYEy56ZYqs3XtooY1J1Y0CTGe0vXqgavNZ
 5/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pQ/Mv1lsK35PGwG/+EQQAX4t9NIVJij/qvcmgkXlig0=;
 b=DHewUavQUcV8v1P7okYcmL+fPbAD3ZBw26zflviGMJx3m4weem+BHA9x/OHGZiuKFk
 6Ur2YXCKeQCdsNV8+naoKL+MASP305wlLGBrjQY4Qa7KFqkthyLso12G/rBggjPfeRN1
 co8v4xb6y/EXLuTqKqCU2rVfTdMd5rjn+x6DpYfNkRGUBaeLMN+TL3pCdpbU40fQZKpX
 YTJPjCBK+TK341wGHewcs6lxZOuWldlewrYF7nJ998FihLzz9id6f5C8MOAXBwJ9dnVP
 xTUc9W6QeeLU8hxovmzKz1rVGKUH3lIWuiZ9R70AX1SLQp6CHvJoVLbWAzfbmN69YYjB
 pEeg==
X-Gm-Message-State: APjAAAWCvtq6pIpY7PQg35KTu+EF1tLSb1EL/5bqPdfY+yuyLnQhxFYE
 +dKPwh//jGdMUsC6GqH9cOmmGWQM
X-Google-Smtp-Source: APXvYqwwWQ/aUQR9Le66ie0HkIWnL/npyHY6xDmdknGiNnq4ofYj2guGy/gWKk13JFZKrZLmHSzekQ==
X-Received: by 2002:a25:d4cc:: with SMTP id
 m195mr46332893ybf.321.1582572501301; 
 Mon, 24 Feb 2020 11:28:21 -0800 (PST)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com.
 [209.85.219.173])
 by smtp.gmail.com with ESMTPSA id l191sm31634ywb.12.2020.02.24.11.28.20
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 11:28:20 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id f130so5169431ybc.7
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 11:28:20 -0800 (PST)
X-Received: by 2002:a25:cc8a:: with SMTP id l132mr8632212ybf.178.1582572499831; 
 Mon, 24 Feb 2020 11:28:19 -0800 (PST)
MIME-Version: 1.0
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
In-Reply-To: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 24 Feb 2020 14:27:42 -0500
X-Gmail-Original-Message-ID: <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
Message-ID: <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: anton.ivanov@cambridgegreys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_112823_519406_E39B34AB 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [willemdebruijn.kernel[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Eric Dumazet <eric.dumazet@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 8:26 AM <anton.ivanov@cambridgegreys.com> wrote:
>
> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
>
> Some of the locally generated frames marked as GSO which
> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> fragments (data_len = 0) and length significantly shorter
> than the MTU (752 in my experiments).

Do we understand how these packets are generated? Else it seems this
might be papering over a deeper problem.

The stack should not create GSO packets less than or equal to
skb_shinfo(skb)->gso_size. See for instance the check in
tcp_gso_segment after pulling the tcp header:

        mss = skb_shinfo(skb)->gso_size;
        if (unlikely(skb->len <= mss))
                goto out;

What is the gso_type, and does it include SKB_GSO_DODGY?

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
