Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF111D1EA0
	for <lists+linux-um@lfdr.de>; Wed, 13 May 2020 21:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24PH2o0tKFj0FKv21S8iplliEdgg7OS201GwBgK7CxU=; b=SgPVYj8lUeOhNp
	ZM5QeAy2eu/oEi3BcI1gBm7yIPnT9hTY0BzZ3rCqZUaUQpOObFt65Xa5x7U+BI452dxVfoo9INrtE
	Tf9pHVRZbizy/8Vo+h1iomtodQpRuy8m/md/0N0HbzPV074PzfopgsBMfK/UpPD6nLC8rWx+wsxxF
	C7t8fO6cZAiGxeJvK8c6qEHFV0JkxTzoi28XQnmrwTI5iiIQiSwMJEpxxH6gVjLdUldn0UPZ1nmaG
	47IAmMDcDdcyInHiQVKFIP3JGqLnF8ttN6sxSLonKiv+ozDRhSxco1/kJpFu35aKNk+DHlhAhXzPJ
	pKMjSqfly7/q5qAoCy+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwnM-0001PT-R1; Wed, 13 May 2020 19:11:56 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwnK-0001OL-NA
 for linux-um@lists.infradead.org; Wed, 13 May 2020 19:11:56 +0000
Received: by mail-lf1-f65.google.com with SMTP id z22so507547lfd.0
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DlDe1IobgVm68K0PtFybaGZyKFGHK1OfKry00qMtGtQ=;
 b=V1UkNiRNfL733X9vr+6V4+xkxNISM7utjyshsT36quvy8jA5IVqpf+k3EDQxjXOIYU
 JkvVkJQB05ajebE0nuwA1SP0j1/ZNVxXHdyZbBxtTdovrxuSXCzKJOTV20D7eG1vu7ZV
 OomJViLlEUU/v3q1g+qPNyPfCuDydticNEJPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DlDe1IobgVm68K0PtFybaGZyKFGHK1OfKry00qMtGtQ=;
 b=ce3Qk53OOb8omG9PIiRSKAocgRdAeBvtyyOjBE2KrLVPuztqGOQ2dZTAqnRiop1K8a
 uZ57tc1zs/nI+Jlb5Do9szuFBVotK68kW0w4qeo8Z59nBjByFADRGy0VjNHqimpldSw4
 T9xxzgy3GD/5SNAwcpRP2MepR7NW8wMkLEzfquIJb3il8GB7iqrUTHlrw36f1zex+zaj
 Ba4Nlwsoi08FfMVrlA6W4xosbvI8j4TUZ9qyUfNy1oFrErFM2X7Vv5afgZxN5AoeW2OX
 VmJSVmvBEOtApLnrfwY6wHJszCud5Jvi5htQNFnRsHebtYPhs4mImCbPglgaB0d/D4Ke
 Yjlw==
X-Gm-Message-State: AOAM5329furFUWy5b8OiYrFzBomi0sNWkI+ZaXWrhZ0AnSeTc7w05Eh1
 Ynat22b8OxeG3sgITjsiQkq+N3OziRw=
X-Google-Smtp-Source: ABdhPJzHzJbX/7dHB/D+OYhpgruioQtLb9FNWu8OkwTILaZzrxmOedNTjE4u1pMAUls02i98htlvWg==
X-Received: by 2002:ac2:4a72:: with SMTP id q18mr612661lfp.115.1589397105000; 
 Wed, 13 May 2020 12:11:45 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com.
 [209.85.167.53])
 by smtp.gmail.com with ESMTPSA id n23sm198466ljj.48.2020.05.13.12.11.43
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:11:44 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id x73so491619lfa.2
 for <linux-um@lists.infradead.org>; Wed, 13 May 2020 12:11:43 -0700 (PDT)
X-Received: by 2002:a19:ed07:: with SMTP id y7mr627896lfy.31.1589397103373;
 Wed, 13 May 2020 12:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
In-Reply-To: <20200513160038.2482415-12-hch@lst.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 13 May 2020 12:11:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
Message-ID: <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_121154_754743_473A7F40 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, linux-parisc@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 9:01 AM Christoph Hellwig <hch@lst.de> wrote:
>
> +static void bpf_strncpy(char *buf, long unsafe_addr)
> +{
> +       buf[0] = 0;
> +       if (strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
> +                       BPF_STRNCPY_LEN))
> +               strncpy_from_user_nofault(buf, (void __user *)unsafe_addr,
> +                               BPF_STRNCPY_LEN);
> +}

This seems buggy when I look at it.

It seems to think that strncpy_from_kernel_nofault() returns an error code.

Not so, unless I missed where you changed the rules.

It returns the length of the string for a successful copy. 0 is
actually an error case (for count being <= 0).

So the test for success seems entirely wrong.

Also, I do wonder if we shouldn't gate this on TASK_SIZE, and do the
user trial first. On architectures where this thing is valid in the
first place (ie kernel and user addresses are separate), the test for
address size would allow us to avoid a pointless fault due to an
invalid kernel access to user space.

So I think this function should look something like

  static void bpf_strncpy(char *buf, long unsafe_addr)
  {
          /* Try user address */
          if (unsafe_addr < TASK_SIZE) {
                  void __user *ptr = (void __user *)unsafe_addr;
                  if (strncpy_from_user_nofault(buf, ptr, BPF_STRNCPY_LEN) >= 0)
                          return;
          }

          /* .. fall back on trying kernel access */
          buf[0] = 0;
          strncpy_from_kernel_nofault(buf, (void *)unsafe_addr,
BPF_STRNCPY_LEN);
  }

or similar. No?

                   Linus

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
