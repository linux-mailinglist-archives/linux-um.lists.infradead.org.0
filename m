Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F616B0E3
	for <lists+linux-um@lfdr.de>; Mon, 24 Feb 2020 21:21:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jfm8k76QJ/HTPc6/09R/dAxYSM7BWndegoFPMA9swv0=; b=PNgJqedI4hZkXX
	/cyyTPbiBYbEmwXDGfBeCmyPCyEdhLxosRm0Y2u+4ERpRN+xt9AFuua7tcQStsmkDnJPbQDcFiH9R
	HhYULYn0hPYby3pZAl1jsE1uqoVHCCtDSCLPV2EI42vKuLMiPtgHlOdowmcJMCoj112BcErfylIH1
	SbG6kRXumdN1s7dZFMqPna0hodOCUOdCNWUvk1azkhS2PnaPbkKAQTqQC2LgjEmG4+e0vlB2VsUvg
	DxAi1YWVhihcfy0uVGNfgnPDd/o9dMRafPq5SeMN/hWoDsFdFc3ApZaSHWquIy6Q53HHG7ZOlb7zm
	WDqDtsxtRU205UsZx8iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KET-0007eW-GV; Mon, 24 Feb 2020 20:21:37 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KER-0007e3-6V
 for linux-um@lists.infradead.org; Mon, 24 Feb 2020 20:21:36 +0000
Received: by mail-yb1-xb41.google.com with SMTP id i16so3167294ybp.6
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 12:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0nEJM8yTdyUbhN2ATPuO/jWnU2UZaTd8jjC8sXAHqFQ=;
 b=ft0SFe/z22U1TyjHYjZhIL1FD0josSLoJX2cTgyBz7Kyp2KAsA6pSpkZfC6FS/FF4v
 mZEkEluTSY18I+ksbZghWDXr4dZpNqkDvK1mvdFErJfTOZda86m1A9XGKnoZEZcMxzzC
 qKPWp3NGt7Ic8ap5OiZgcrFY0prGNB6DkytrIrfzEUxD4H4a1JlgoPQUiKz+woN6EoxY
 /KZt2S+DSHeSslmeKecNpBtgbYKjm99AbLx9sRJqBWcIE+rqluo5g4XMuYJunu7PVwtG
 tcKdlleikMrQIc8BJlMLDCu3BqCmjNcxYZGYc6+Btj4MpExIAekAzdG0uZehvfY1s2ew
 Tf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0nEJM8yTdyUbhN2ATPuO/jWnU2UZaTd8jjC8sXAHqFQ=;
 b=VlexAEmz+bwUoe8zADzkaJPQjSsyzcIKaZyyuuruARdxZ5n7lo239AidOyK8F0tfnS
 hW4z074QXs+iZX3HPx+wbwvUrK7viaQ+03elcY4LB5TJOUQ+v8Bz+a7Lwc1PDHQNvHHS
 00z1SoSwpy0sjUJW5qz0PVZnKBpFFiSdi607j7XRGLgPexZ7WlmTjuvQcK4olngIPdp3
 u6d5m4YsudEWHOSKWNXxnLQoUnaSmLo5s+kMBDc0AaJA3DjvO9usizbE26MmN1z/UQax
 /GLUQgA/PXYn4Seg2ZD2z8y6SN9cfx7nhr4jsk1s3cwDMUWJWh5sgx30o/5GLSBoEFcX
 2WPg==
X-Gm-Message-State: APjAAAX2Sox8jfd2S6lkklQmYCLh4Cd9cdYTLyGVGejo6VG+Vg453QCj
 hUhzTisNYSMPKA2lI0WZ7w7rPpxi
X-Google-Smtp-Source: APXvYqzWUu6eihy2WMgoaX1TbWEY02rn+pvKJbUePtLVeLIj9zbPr/QkiQKeAXtt6mR6NN65BhQUkQ==
X-Received: by 2002:a5b:50a:: with SMTP id o10mr48254715ybp.422.1582575692257; 
 Mon, 24 Feb 2020 12:21:32 -0800 (PST)
Received: from mail-yw1-f53.google.com (mail-yw1-f53.google.com.
 [209.85.161.53])
 by smtp.gmail.com with ESMTPSA id m15sm5606501ywh.78.2020.02.24.12.21.30
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 12:21:31 -0800 (PST)
Received: by mail-yw1-f53.google.com with SMTP id t141so5815028ywc.11
 for <linux-um@lists.infradead.org>; Mon, 24 Feb 2020 12:21:30 -0800 (PST)
X-Received: by 2002:a81:6588:: with SMTP id
 z130mr39338605ywb.355.1582575690106; 
 Mon, 24 Feb 2020 12:21:30 -0800 (PST)
MIME-Version: 1.0
References: <20200224132550.2083-1-anton.ivanov@cambridgegreys.com>
 <CA+FuTSd8P6uQnwisZEh7+nfowW9qKLBEvA4GPg+xUkjBa-6TDA@mail.gmail.com>
 <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
In-Reply-To: <4e7757cf-148e-4585-b358-3b38f391275d@cambridgegreys.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 24 Feb 2020 15:20:53 -0500
X-Gmail-Original-Message-ID: <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
Message-ID: <CA+FuTSdOCJZCVS4xohx+BQmkmq8JALnK=gGc0=qy1TbjY707ag@mail.gmail.com>
Subject: Re: [PATCH v3] virtio: Work around frames incorrectly marked as gso
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_122135_264897_0E12346D 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 2:55 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
> On 24/02/2020 19:27, Willem de Bruijn wrote:
> > On Mon, Feb 24, 2020 at 8:26 AM <anton.ivanov@cambridgegreys.com> wrote:
> >>
> >> From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> >>
> >> Some of the locally generated frames marked as GSO which
> >> arrive at virtio_net_hdr_from_skb() have no GSO_TYPE, no
> >> fragments (data_len = 0) and length significantly shorter
> >> than the MTU (752 in my experiments).
> >
> > Do we understand how these packets are generated?
>
> No, we have not been able to trace them.
>
> The only thing we know is that this is specific to locally generated
> packets. Something arriving from the network does not show this.
>
> > Else it seems this
> > might be papering over a deeper problem.
> >
> > The stack should not create GSO packets less than or equal to
> > skb_shinfo(skb)->gso_size. See for instance the check in
> > tcp_gso_segment after pulling the tcp header:
> >
> >          mss = skb_shinfo(skb)->gso_size;
> >          if (unlikely(skb->len <= mss))
> >                  goto out;
> >
> > What is the gso_type, and does it include SKB_GSO_DODGY?
> >
>
>
> 0 - not set.

Thanks for the follow-up details. Is this something that you can trigger easily?

An skb_dump() + dump_stack() when the packet socket gets such a
packet may point us to the root cause and fix that.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
